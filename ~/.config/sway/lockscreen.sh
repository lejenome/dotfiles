#!/bin/sh
gpgconf --kill gpg-agent
sudo -k
exec swaylock --color 000000 -e -F -f -l
# swaymsg "output * dpms off"
