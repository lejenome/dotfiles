[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Xorg settings
#xset +dpms			# Enable DPMS
#xset dpms 300 330 360		# Set standby, suspend, & off times (in seconds)

# Autostart apps/daemons

[[ -f ~/.fehbg ]] && sh ~/.fehbg &
# choose random bg wallpaper
# echo $RANDOM >/dev/null && \
#	feh --bg-fill $( ls $HOME/Pictures/wallpapers/* | sed "$((RANDOM%$(ls $HOME/Pictures/wallpapers/| wc -l)))p;d" )

urxvtd -q -o &
redshift &
pokoy &
unclutter &
numlockx &
xautolock -time 5 -locker slimlock &
setxkbmap fr
dmenu_path & # cache exec path
xmodmap ~/.xmodmap

# exec  DE/WM :: Get first arg or exported XSESSION var
XSESSION=${1:-$XSESSION}
if [ -n "$XSESSION" ]; then
	exec $XSESSION
else
	exec i3
fi
