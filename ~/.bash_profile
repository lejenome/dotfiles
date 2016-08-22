if [[ -e ~/.zprofile ]]; then
	source ~/.zprofile
elif [[ -e ~/.config/zsh/.zprofile ]]; then
	source ~/.config/zsh/.zprofile
else
	[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
fi
