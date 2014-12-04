urxvtc -e zsh -c "tmux kill-session -t TERM; \
exec tmux new-session -nTERM -sTERM \; \
new-window -n TERM zsh              \; \
split -h -l 81  -t 0 mutt           \; \
split -v -l 65  -t 1 weechat        \; \
split -v -l 25  -t 2 ncmpcpp        \; \
select-pane -t 0
"
