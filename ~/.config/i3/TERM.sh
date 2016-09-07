#!/bin/sh
tmux kill-session -t TERM
exec tmux new-session -nTERM -sTERM				\; \
	new-window -n TERM         'ipython3'		\; \
	split -d -t 0 -h -b -l 169 'todo.sh ls; zsh'		\; \
	split -d -t 0 -v -b -l 12  'mutt'			\; \
	split -d -t 0 -v    -l 12  'ncmpcpp'			\; \
	select-pane -t 0					\; \
	select-pane -t 3
# 0: ipython
# 1: ncmpcpp
# 2: mutt
# 3: zsh
