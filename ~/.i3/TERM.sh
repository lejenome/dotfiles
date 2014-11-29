urxvtc -e zsh -c "tmux kill-session -t TERM; \
exec tmux new-session -nTERM -sTERM \; \
new-window -n TERM htop             \; \
split -h -l 198 -t 0 zsh            \; \
split -h -l 90  -t 1 mutt           \; \
split -v -l 79  -t 0 newsbeuter     \; \
split -v -l 15  -t 3 calcurse       \; \
split -v -l 65  -t 2 weechat        \; \
split -v -l 25  -t 5 ncmpcpp        \; \
split -h -l 35  -t 6 lyvi           \; \
select-pane -t 1
"

