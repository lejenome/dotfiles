#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import from zsh
source ~/.zsh/00-environment.zsh
source ~/.zsh/01-envars.zsh
source ~/.zsh/02-functions.zsh
source ~/.zsh/02-proxy.zsh
source ~/.zsh/02-aliases.zsh

# fix some envars from zsh
export HISTFILE="$XDG_DATA_HOME"/bash/history
export SHELL=/bin/bash
export HISTCONTROL="ignoreboth"

set -o vi

# Correct dir spellings
shopt -q -s cdspell
# Make sure display get updated when terminal window get resized
shopt -q -s checkwinsize
# Turn on the extended pattern matching features
shopt -q -s extglob
# Append rather than overwrite history on exit
shopt -s histappend
# Make multi-line commandsline in history
shopt -q -s cmdhist
# Get immediate notification of background job termination
set -o notify


PS1='\e[1;33m\u\e[0m@\e[1;31m\h\e[0m:\e[1;34m\W\e[0m (\e[36m$?\e[0m) \$ '
