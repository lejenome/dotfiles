tmux -q has-session -tMAIN \
	&& tmux new-session -tMAIN \; new-window \
	|| exec tmux new-session -n$USER -sMAIN
