export ZDOTDIR="${ZDOTDIR:-$HOME/.config/zsh}"
[[ -e "$ZDOTDIR/00-environment.zsh" ]] && source "$ZDOTDIR/00-environment.zsh"

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	[[ -e "$ZDOTDIR/00-wayland" ]] && source "$ZDOTDIR/00-wayland"
	# urxvtd -q -o &
	# numlockx &
	# dmenu_path >/dev/null & # cache exec path
	# dispwin -d1 ~/.config/color/icc/ICC_Lenovo_G500s_1366x768_glossy_SAMSUNG__L_ATLTN156AT30L01.icm
	#redshift -m drm -PO 4500
	#mako &
	export I3SOCK=$SWAYSOCK
	export XDG_CURRENT_DESKTOP=sway
	exec sway
elif [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]]; then
	exec startx $XINITRC
fi
