#!/bin/bash
i3-msg "workspace 2:  WEB; append_layout $HOME/.i3/web_ws_layout.json"
(firefox &)
tmux kill-session -t MUTT
tmux kill-session -t WEECHAT
tmux kill-session -t NCMPCPP
(kill -9 $(pidof weechat); \
 st -c WEECHAT -e zsh -c "tmux new-session -s WEECHAT \; new-window weechat" )&
(st -c MUTT    -e zsh -c "tmux new-session -s MUTT    \; new-window mutt" )&
(st -c NCMPCPP -e zsh -c "tmux new-session -s NCMPCPP \; new-window ncmpcpp" )&
