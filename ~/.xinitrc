[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
setxkbmap fr
[[ -f ~/.fehbg ]] && sh ~/.fehbg &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

exec i3
