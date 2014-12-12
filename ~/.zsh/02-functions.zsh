# {{{ Sync all git branchs
sync_all_branch () {
    git fetch upstream
    for upstream_branch in   $( git branch -a |awk 'BEGIN {FS="/"} $2=="upstream" {print $3}' ) ;
    do
        if git checkout $upstream_branch
        then
            echo rebase $upstream_branch
            git rebase -s recursive -Xours upstream/$upstream_branch
        else
             echo create $upstream_branch
             git checkout -b $upstream_branch upstream/$upstream_branch
        fi
    done
    git checkout master
}
# }}}

# {{{ Title stuffs
precmd() {

	vcs_info
	setprompt

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

# {{{ Oneliners
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
cpf() { cp "$@" && goto "$_"; }
cpm() { mkdir `dirname ${@[$#]}` ; cp "$@" }
mvf() { mv "$@" && goto "$_"; }
mkf() { mkdir -p $1; cd $1 }
cdl() { cd $@; ls++ }
d() { ($1 &) }
zsh_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head }
du1() { du -h --max-depth=1 "$@" | sort -k 1,1hr -k 2,2f; }
epoch() { print $(( `echo $1 | cut -b 1-2` * 3600 + `echo $1 | cut -b 4-5` * 60 + `echo $1 | cut -b 7-8` )) }
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
	touch README.markdown
	git add README.markdown
	git commit -m 'inital setup - automated'
	git remote add origin git@github.com:crshd/$1.git
	git push origin master
} # }}}

# {{{ Archiving - Compress/decompress various archive types with a single command
ark() {
	case $1 in

		e)
			case $2 in
				*.tar.bz2)   tar xvjf $2      ;;
				*.tar.gz)    tar xvzf $2      ;;
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

# {{{ Function to switch packer/pacman-color, depending on options used
#pac() {
#	case $1 in
#
#		-S | -Ss | -Ssq | -Si | -G )
#			sudo packer $@ ;;
#
#		-Su | -Syu )
#			sudo packer $@
#			echo "" > $HOME/.pacmanupdates ;;
#
#		* )
#			sudo pacman-color $@ ;;
#
#	esac
#} # }}}

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
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

pip() {
	if [ "$1" = "install" -o "$1" = "bundle" ]; then
		cmd="$1"
		shift
		/usr/bin/pip $cmd --user $@
	else
		/usr/bin/pip $@
	fi
}
pip2() {
	if [ "$1" = "install" -o "$1" = "bundle" ]; then
		cmd="$1"
		shift
		/usr/bin/pip2 $cmd --user $@
	else
		/usr/bin/pip2 $@
	fi
}
pip3() {
	if [ "$1" = "install" -o "$1" = "bundle" ]; then
		cmd="$1"
		shift
		/usr/bin/pip3 $cmd --user $@
	else
		/usr/bin/pip3 $@
	fi
}
