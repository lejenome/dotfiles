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

PS1='[\u@\h \W]\$ '
