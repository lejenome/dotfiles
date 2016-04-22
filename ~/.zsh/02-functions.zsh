# {{{ Title stuffs
precmd() {

	vcs_info # FIXME: too slow
	setprompt # 06-prompt.zsh

	case $TERM in
		rxvt-256color | screen-256color )
			print -Pn "\e]0;%n@%m: %~\a" ;;
	esac
}

preexec() {
	case $TERM in
		rxvt-256color | screen-256color )
			print -Pn "\e]0;$1\a" ;;
	esac
} # }}}

sagem-reboot() {
	local pw="$(gpg --quiet --for-your-eyes-only --no-tty --decrypt ~/secret/router-pw.gpg)"
	curl --silent -u "admin:$pw" "http://192.168.1.1/rebootinfo.cgi" >/dev/null
}
sagem-status() {
	local pw="$(gpg --quiet --for-your-eyes-only --no-tty --decrypt ~/secret/router-pw.gpg)"
	links -dump "http://admin:${pw}@192.168.1.1/wancfg.cmd?action=refresh" \
		| tail -3 \
		| awk '(NR == 1 || NR == 2) {print $2" "$3" "$4} END {print}' \
		| column -t
}

# {{{ Oneliners
# go to dir after cp/mv/mkdir
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
cpg() { cp "$@" && goto "$_"; }
mvg() { mv "$@" && goto "$_"; }
mkg() { mkdir -p $1; cd $1; }
# mkdir dest folder then cp/mv
cpd() { mkdir -p "${@[$#]}" ; cp -r "$@"; }
mvd() { mkdir -p "${@[$#]}" ; mv "$@"; }
# mkdir of dirname of dest file then cp/mv
cpf() { mkdir -p `dirname "${@[$#]}"` ; cp -r "$@"; }
mvf() { mkdir -p `dirname "${@[$#]}"` ; mv "$@"; }
# other stuff
cdl() { cd $@; ls++; }
d() { ($1 &); }
zsh_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head; }
du1() { du -h --max-depth=1 "$@" | sort -k 1,1hr -k 2,2f; }
epoch() { print $(( `echo $1 | cut -b 1-2` * 3600 + `echo $1 | cut -b 4-5` * 60 + `echo $1 | cut -b 7-8` )); }
# }}}

# {{{ Create ZSH named directory
namedir() {
	echo "$1=$PWD ;  : ~$1" >> ~/.config/zsh/directories
	. $XDG_CONFIG_HOME/zsh/directories
} # }}}

# {{{ Most used Commands
mostused() {
	sed -n 's/^\([a-z]*\) .*/\1/p' $HISTFILE |
	sort |
	uniq -c |
	sort -n -k1 |
	tail -25 |
	tac
} # }}}

# {{{ Create ISO from device or directory
mkiso()
{
	case $1 in
		/dev/*)
			dd if=$1 of=$2 ;;
		*)
			mkisofs -o $2 $1 ;;
	esac
} # }}}

# {{{ Setup empty github repo
mkgit() {
	mkdir $1
	cd $1
	git init
	touch README.md
	git add README.md
	git commit -m 'inital setup - automated'
	git remote add origin git@github.com:$USER/$1.git
	git push origin master
} # }}}

# {{{ Archiving - Compress/decompress various archive types with a single command
ark() {
	case $1 in

		e)
			case $2 in
				*.tar.bz2)   tar xvjf $2      ;;
				*.tar.gz)    tar xvzf $2      ;;
				*.tar.xz)    tar xvJf $2      ;;
				*.bz2)       bunzip2 $2       ;;
				*.rar)       unrar x $2       ;;
				*.gz)        gunzip $2        ;;
				*.tar)       tar xvf $2       ;;
				*.tbz2)      tar xvjf $2      ;;
				*.tgz)       tar xvzf $2      ;;
				*.zip)       unzip $2         ;;
				*.Z)         uncompress $2    ;;
				*.7z)        7z x $2          ;;
				*)           echo "'$2' unknown/unsupported archive type" ;;
			esac ;;

		c)
			case $2 in
				*.tar.*)    arch=$2; shift 2;
					tar cvf ${arch%.*} $@
					case $arch in
						*.gz)   gzip -9r ${arch%.*}   ;;
						*.bz2)  bzip2 -9zv ${arch%.*} ;;
					esac                                ;;
				*.rar)      shift; rar a -m5 -r $@; rar k $1    ;;
				*.zip)      shift; zip -9r $@                   ;;
				*.7z)       shift; 7z a -mx9 $@                 ;;
				*)          echo "'$2' unknown/unsupported archive type"      ;;
			esac ;;

		*)
			echo "commands: c e" ;;

	esac
} # }}}

### Google Translate
say() {
	[[ -z "$@" ]] && echo "USAGE: `basename $0` [-[FROM_LANG][TO_LANG]] text..." >&2 && return
	local SL TL TEXT
	[[ "${1[1]}" == "-" ]] && SL=${1:1:2} && TL=${1:3:2} && shift
	SL=${SL:-en}
	TL=${TL:-$SL}
	TEXT="$(echo "$@" | perl -MURI::Escape -ne 'chomp;print uri_escape($_)')"
	mpv -really-quiet "http://translate.google.com/translate_tts?ie=UTF-8&tl=$TL&sl=$SL&q=$TEXT" &> /dev/null
}
translate() {
	[[ -z "$@" ]] && echo "USAGE: `basename $0` [-[FROM_LANG][TO_LANG]] text..." >&2 && return
	local SL TL TEXT
	[[ "${1[1]}" == "-" ]] && SL=${1:1:2} && TL=${1:3:2} && shift
	SL=${SL:-en}
	TL=${TL:-fr}
	TEXT="$(echo "$@" | perl -MURI::Escape -ne 'chomp;print uri_escape($_)')"
	curl -s -A "Mozilla" "http://translate.google.com/translate_a/t?client=t&ie=UTF-8&text=$TEXT&sl=$SL&tl=$TL" | awk -F'"' '{print $2}'
}
weather() {
	local city=${1:-Sfax}
	curl "wttr.in/$city"
}

# source: http://zanshin.net/2013/02/02/zsh-configuration-from-the-ground-up/
# -------------------------------------------------------------------
# display a neatly formatted path
# -------------------------------------------------------------------
path() {
	echo $PATH | tr ":" "\n" | \
	awk "{ sub(\"/usr\",   \"$fg_no_bold[green]/usr$reset_color\"); \
	    	sub(\"/bin\",   \"$fg_no_bold[blue]/bin$reset_color\"); \
		sub(\"/opt\",   \"$fg_no_bold[cyan]/opt$reset_color\"); \
		sub(\"/sbin\",  \"$fg_no_bold[magenta]/sbin$reset_color\"); \
		sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
		print }"
}
# -------------------------------------------------------------------
# any function from http://onethingwell.org/post/14669173541/any
# search for running processes
# -------------------------------------------------------------------
any() {
	emulate -L zsh
        unsetopt KSH_ARRAYS
    	if [[ -z "$1" ]] ; then
		echo "any - grep for process(es) by keyword" >&2
		echo "Usage: any " >&2 ; return 1
	else
		ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
	fi
}

#displays mounted drive information in a nicely formatted manner
#(http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
function nicemount() {
	(echo "DEVICE PATH TYPE FLAGS" \
		&& mount | awk '$2="";$4="";1' \
	) | column -t
}
# from https://wiki.archlinux.org/index.php/environment_variables
envof() { sed 's/\x0/\n/g' /proc/${1}/environ; }
