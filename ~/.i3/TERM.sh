urxvtc -e zsh -c "tmux kill-session -t TERM; \
exec tmux new-session -nTERM -sTERM \; \
new-window -n TERM htop             \; \
split -h -l 180 -t 0 zsh            \; \
split -h -l 95 -t 1 mutt            \; \
split -h -l 21 -t 2 cmus            \; \
split -v -l 59 -t 0 zsh             \; \
split -v -l 13 -t 4 calcurse        \; \
split -v -l 48 -t 2 weechat         \; \
split -v -l 48 -t 3 lyvi            \; \
clock-mode  -t 4                    \; \
select-pane -t 1
"

