dotfiles
========

My dotfiles, My Own Linux System

These are the dotfiles I'm currently using for my system. They are not perfect
yet and have a lot of unneeded or missing configurations

Install
========

These dotfiles files are wrote for my personal needs and may not sweet your
needs and your system. These dotfiles depend on some other private dotfiles and
applications to work correctly, and if they have not been adapted very cerfully
to your system, they may make it unstable. YOU HAVE BEEN WARNED!

* fork the repository and init submodules
* tweak the dotfiles to sweet your needs and your current system configurations
* Create a link of every dotfile you need from ~ folder to your home directory
* Copy dotfiles you want from etc files to /etc (don't create links for
  security reasons)
* Some dotfiles are missing as they contain some personal informations or some
  secure data, create your own dotfiles
* Some dotfiles needs some extra apps/daemons to be installed
* You need to copy some script files from `/bin` to your `~/.local/bin` folder.

NOTE: I have added dotfiles.sh script to made it easier to sync and check
status of dotfiles. tweak config files dotfile-{home,etc}.list to matches your
needs before using the script

LICENCE and CREDITS
=========

Some of these dotfiles are a copy of other people dotfiles with a litle tweaks
and Some are completly mine, I don't remember all original authors.

weechat based on: weechat\_dex2 (http://dotshare.it/dots/238/) by d3x0r

i3 based on: i3~Arch (http://dotshare.it/dots/754/) by okubax

zsh based on: ZSH-alicious (http://dotshare.it/dots/100/) by crshd


All my own dotfiles are under GPL-3

All my tweaks to other authors dotfiles are under the same licence
