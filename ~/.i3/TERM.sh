st -e zsh -c "tmux kill-session -t TERM;	\
exec tmux new-session -nTERM -sTERM		\; \
new-window -n TERM 'todo.sh ls; zsh'		\; \
split -t 0 -h -l 84 htop			\; \
split -t 1 -v -l 58 '~/.i3/colorscheme.sh; zsh'	\; \
select-pane -t 0
"
