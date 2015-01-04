if [[ -e ~/.zprofile ]]; then
	source ~/.zprofile
else
	[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
fi
