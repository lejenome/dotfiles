[[ -e ~/.zsh/00-environment.zsh ]] && source ~/.zsh/00-environment.zsh

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
elif [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]]; then
	[[ -e ~/.zsh/00-wayland ]] && source ~/.zsh/00-wayland
	urxvtd -q -o &
	#numlockx &
	dmenu_path >/dev/null & # cache exec path
	export I3SOCK=$SWAYSOCK
	exec sway
#elif [[ $XDG_VTNR -eq 3 ]]; then
#	[[ -e ~/.zsh/00-wayland ]] && source ~/.zsh/00-wayland
#	exec enlightenment_start
fi
