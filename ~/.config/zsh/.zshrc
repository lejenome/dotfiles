export ZDOTDIR="${ZDOTDIR:-$HOME}"
export ZSH=$HOME/git/oh-my-zsh
#ZSH_THEME=sunrise
plugins=(command-not-found cp extract github pip django tmux vi-mode vundle branch lol man)
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
[ -e "$ZSH/oh-my-zsh.sh" ] && source $ZSH/oh-my-zsh.sh

autoload -U colors && colors
#fpath=( $fpath ~/.zsh/completion )
autoload -U compinit && compinit -i -d "$HOME/.local/share/zsh/zcompdump"
autoload -U vcs_info && vcs_info
autoload -U edit-command-line && zle -N edit-command-line \
	&& bindkey -M vicmd v edit-command-line

zmodload zsh/complist
zmodload zsh/terminfo

bindkey -v

if [ -e "$HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
	source "$HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
else
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

for r in $ZDOTDIR/*.zsh; do
        source $r
done
# umask 077
