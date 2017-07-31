#!/bin/sh
tmux kill-session -t TERM
exec tmux new-session -nTERM -sTERM			\; \
	new-window -n TERM         'ipython3'		\; \
	split -d -t 1 -h -b -l 169 'task calendar rc.verbose=nothing && task summary rc.verbose=label,blank && task status:pending minimal rc.verbose=label,blank; zsh'	\; \
	split -d -t 1 -v -b -l 12  'mutt'		\; \
	split -d -t 2 -v    -l 12  'ncmpcpp'		\; \
	select-pane -t 2				\; \
	select-pane -t 0
