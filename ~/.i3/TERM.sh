urxvtc -e zsh -c "tmux kill-session -t TERM; \
exec tmux new-session -nTERM -sTERM \; \
new-window -n TERM htop             \; \
split -h -l 198 -t 0 zsh            \; \
split -h -l 81  -t 1 mutt           \; \
split -v -l 79  -t 0 newsbeuter     \; \
split -v -l 30  -t 3 calcurse       \; \
split -v -l 65  -t 2 weechat        \; \
split -v -l 25  -t 5 ncmpcpp        \; \
select-pane -t 1
"
