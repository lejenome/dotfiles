#!/bin/sh
tmux kill-session -t TERM
exec tmux new-session -nTERM -sTERM			\; \
	new-window -n TERM  'todo.sh ls; zsh'		\; \
	split -t 0 -h -l 84 'mutt'			\; \
	split -t 1 -v -l 52 'archey3; ipython3'		\; \
	split -t 2 -v -l 15 'ncmpcpp'			\; \
	select-pane -t 2				\; \
	select-pane -t 0
