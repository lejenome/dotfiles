export ZDOTDIR="${ZDOTDIR:-$HOME}"
[[ -e "$ZDOTDIR/00-environment.zsh" ]] && source "$ZDOTDIR/00-environment.zsh"

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx $XINITRC
elif [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]]; then
	[[ -e "$ZDOTDIR/00-wayland" ]] && source "$ZDOTDIR/00-wayland"
	urxvtd -q -o &
	#numlockx &
	dmenu_path >/dev/null & # cache exec path
	export I3SOCK=$SWAYSOCK
	exec sway
fi
