#compdef dotfiles
_arguments  \
	"1:subcommand:->subcommand" \
	"2:option:->option"
# TODO: Implements these args on dotfiles.sh script
#	{-c,--config-file=+}"[Choose An other config file]:path of file .list:_files" \
#	{-p,--path-synced=+}"[Choose the Path of dotfiles to sync]:Path of dotfiles dir to sync:_directories"

case $state in
	subcommand)
		local -a subcommands
		subcommands=(
		"sync:Sync dotfiles"
		"status:Show status"
		)
		_describe -t subcommands 'dotfiles subcommands' subcommands && ret=0
		;;
	option)
		local -a options
		options=(
		'home:Dotfiles of $HOME'
		'etc:Dotfiles of /etc'
		)
		_describe 'dotfiles directories discriptors' options && ret=0
		;;
esac
return ret

#_dotfiles
