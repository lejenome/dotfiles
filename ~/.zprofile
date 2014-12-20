emulate sh -c 'source /etc/profile'

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
elif [[ $XDG_VTNR -eq 2 ]]; then
	export E_WL_FORCE=drm
      	export ELM_DISPLAY=wl
    	export ELM_ACCEL=opengl
#	export ELM_ENGINE=wayland_egl
	enlightenment_start
	exit
elif [[ $XDG_VTNR -eq 3 ]]; then
	weston
fi
