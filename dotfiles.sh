#!/usr/bin/env bash
# NOTE:
#     TO GET RID OF THE VERBOSE OUTPUT, REDIRECT STDOUT TO /dev/null
#TODO: handle changing item conf from l to c
#TODO: error whene sync /etc without root permission

dotfile () {
	if [ ! -f dotfile-${2}.list ]; then
		echo "ERROR: configuration file 'dotfile-${2}.list' not found" >&2
		exit 1
	fi
	if [ ! -d "$SYNC_DIR" ];then
		echo "ERROR: ${SYNC_DIR} dir to sync not found on $(pwd)" >&2
		exit 1
	fi
	echo $1 $2:
	grep "^\w*[lc] \+[^[:space:]]\+\w*$" dotfile-${2}.list | \
		while read line; do
			ITEM_TO_SYNC=$(awk '{print $2}' <<< "$line")
			if [ ! -e "$SYNC_DIR/$ITEM_TO_SYNC" ]; then
				echo "ERROR: item not found @ $SYNC_DIR/$ITEM_TO_SYNC'" >&2
				continue
			fi
			$1 "$(awk '{print $1}' <<< "$line")"
		done

}
sync () {
	if [[ "$1" == "c"  && -e $TARGET_DIR/$ITEM_TO_SYNC ]]; then
		diff {$SYNC_DIR,$TARGET_DIR}/$ITEM_TO_SYNC > /dev/null \
			&& echo "DID: $ITEM_TO_SYNC" \
			|| echo "WARN: different item '$TARGET_DIR/$ITEM_TO_SYNC' exists" >&2
		continue
	fi
	if [[ "$1" == "l" && -e $TARGET_DIR/$ITEM_TO_SYNC ]];then
		if [[ $(stat -L -c '%i' "$TARGET_DIR/$ITEM_TO_SYNC") == \
			$(stat -L -c '%i' "$SYNC_DIR/$ITEM_TO_SYNC") ]]; then
			echo "DID: $ITEM_TO_SYNC"
			continue
		fi
		echo "WARN: different item '$TARGET_DIR/$ITEM_TO_SYNC' exists" >&2
		continue
	fi
	mkdir -p $(dirname "$TARGET_DIR/$ITEM_TO_SYNC")
	case $1 in
		l) ln -s "$SYNC_DIR/$ITEM_TO_SYNC" "$TARGET_DIR/$ITEM_TO_SYNC"
			echo "LINKED: $ITEM_TO_SYNC"
			;;
		c) cp -r "$SYNC_DIR/$ITEM_TO_SYNC" "$TARGET_DIR/$ITEM_TO_SYNC"
			echo "COPYED: $ITEM_TO_SYNC"
			;;
	esac
}
status () {
	if [[ ! -e $TARGET_DIR/$ITEM_TO_SYNC ]]; then
		echo "NOSYNC: $ITEM_TO_SYNC" >&2
		continue
	fi
	case $1 in
		l)
			if [[ $(stat -L -c '%i' "$TARGET_DIR/$ITEM_TO_SYNC") == \
				$(stat -L -c '%i' "$SYNC_DIR/$ITEM_TO_SYNC") ]]; then
				echo "MATCH : $ITEM_TO_SYNC"
			else
				echo "DIFFER: $ITEM_TO_SYNC" >&2
			fi
			;;
		c)
			diff {$SYNC_DIR,$TARGET_DIR}/$ITEM_TO_SYNC > /dev/null \
				&& echo "MATCH : $ITEM_TO_SYNC" \
				|| echo "DIFFER: $ITEM_TO_SYNC" >&2
			;;
	esac

}

help () {
	cat << EOF
$(basename $0): sync dotfiles
USAGE: $(basename $0) COMMAND PROFILE
command:
        sync: sync dotfiles of profile
        status: check diff/status of profile's dotfiles
profile:
        home: dotfiles of $HOME config at dotfiles-home.list
	etc: dotfiles of /etc config at dotfiles-etc.list
EOF

}

CWD=$(readlink -f $(dirname $0))
if [ $# -ne 2 ]; then
	echo "ERROR: unvalid numbber of args" >&2
	help >&2
	exit 1
fi
case $2 in
	etc)
		SYNC_DIR="$CWD/etc"
		TARGET_DIR="/etc"
		;;
	home)
		SYNC_DIR="$CWD/~"
		TARGET_DIR="$HOME"
		;;
	*)
		echo "ERROR: unsupported profile" >&2
		help >&2
		exit 1
		;;
esac
case $1 in
	sync|status)
		dotfile $1 $2;;
	*)
		echo "ERROR: unsupported command" >&2
		help >&2
		exit 1;;
esac
