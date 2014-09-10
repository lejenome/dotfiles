_dotfiles_complete() {
	case $COMP_CWORD in
	1)
		COMPREPLY=( $(compgen -W 'status sync' -- ${COMP_WORDS[$COMP_CWORD]}) ) ;;
	2)
		COMPREPLY=( $(compgen -W 'home etc' -- ${COMP_WORDS[$COMP_CWORD]}) ) ;;
# TODO: Implement these args on dotfiles.sh script
#	*)
#		COMPREPLY=( $(compgen -W '-c --config-file -p --path-synced' -- ${COMP_WORDS[$COMP_CWORD]}) ) ;;
	esac
	return 0
}

complete -F _dotfiles_complete dotfiles dotfiles.sh
