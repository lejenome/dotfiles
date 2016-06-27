#!/bin/bash
i3-msg "workspace \"${1:-2: WEB}\"" #; append_layout $HOME/.config/i3/web_ws_layout.json"
($BROWSER &)
## st -c else {urxvt,xterm} -name
#[[ "$TERMINAL" == st* ]] && NAMEARG="-c" || NAMEARG="-name"
#tmux kill-session -t MUTT
#tmux kill-session -t WEECHAT
#tmux kill-session -t NCMPCPP
#(kill -9 $(pidof weechat); \
# $TERMINAL $NAMEARG WEECHAT -e zsh -c "tmux new-session -s WEECHAT \; new-window" )&
#($TERMINAL $NAMEARG MUTT    -e zsh -c "tmux new-session -s MUTT    \; new-window mutt" )&
#($TERMINAL $NAMEARG NCMPCPP -e zsh -c "tmux new-session -s NCMPCPP \; new-window ncmpcpp" )&
