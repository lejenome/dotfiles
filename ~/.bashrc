#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import from zsh
source ~/.zsh/01-envars.zsh
source ~/.zsh/02-functions.zsh
source ~/.zsh/02-aliases.zsh

# fix some envars from zsh
export HISTFILE=$HOME/.bash_history
export SHELL=/bin/bash

PS1='\e[1;33m\u\e[0m@\e[1;31m\h\e[0m:\e[1;34m\W\e[0m (\e[36m$?\e[0m) \$ '
