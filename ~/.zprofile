[[ -e ~/.zsh/00-environment.zsh ]] && source ~/.zsh/00-environment.zsh

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
elif [[ $XDG_VTNR -eq 2 ]]; then
	export E_WL_FORCE=drm
      	export ELM_DISPLAY=wl
    	export ELM_ACCEL=opengl
#	export ELM_ENGINE=wayland_egl
	enlightenment_start
	exit
elif [[ -z $DISPLAY && $XDG_VTNR -eq 3 ]]; then
	# Autostart apps/daemons
	#[[ -f ~/.fehbg ]] && sh ~/.fehbg &
	urxvtd -q -o &
	#redshift &
	#pokoy &
	#unclutter &
	#numlockx &
	#xautolock -time 5 -locker slimlock &
	#setxkbmap fr
	dmenu_path >/dev/null & # cache exec path
	sway
fi
