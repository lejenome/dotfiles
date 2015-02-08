#!/bin/sh
set -x
tmux new-session -t $USER -s `date +%Y%m%d%H%M%S` \; new-window \
	|| tmux has-session -t $USER \
	|| tmux new-session -s $USER -d \
	&& tmux new-session -t $USER \; new-window
