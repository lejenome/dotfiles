export ZDOTDIR="${ZDOTDIR:-$HOME}"

[[ ! -d "$HOME/.antigen" && -x git ]] && git clone https://github.com/zsh-users/antigen.git "$HOME/.antigen"
if [[ -e "$HOME/.antigen/antigen.zsh" ]]; then
	source "$HOME/.antigen/antigen.zsh"

	DISABLE_UPDATE_PROMPT=true
	DISABLE_AUTO_UPDATE=true

	antigen use https://github.com/ohmyzsh/ohmyzsh

	for plugin in command-not-found git cp extract github tmux vi-mode vundle branch lol kubectl ansible docker-compose history yarn poetry pipenv pip npm; do
		antigen bundle $plugin
	done

	antigen bundle zsh-users/zsh-completions
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle trapd00r/LS_COLORS

	# antigen bundle marlonrichert/zsh-autocomplete

	antigen apply
fi

# export ZSH="$HOME/.oh-my-zsh"
# #ZSH_THEME=sunrise
# [ -e "$ZSH/oh-my-zsh.sh" ] && source $ZSH/oh-my-zsh.sh

autoload -U colors && colors
#fpath=( $fpath ~/.zsh/completion )
autoload -U compinit && compinit -i -d "$HOME/.local/share/zsh/zcompdump"
autoload -U vcs_info && vcs_info
autoload -U edit-command-line && zle -N edit-command-line \
	&& bindkey -M vicmd v edit-command-line

zmodload zsh/complist
zmodload zsh/terminfo

bindkey -v

for r in ~/.config/zsh/*.zsh; do
	[ -x "$r" ] && source $r
done

# umask 077

true
