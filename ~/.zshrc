autoload -U colors && colors
autoload -U compinit && compinit
autoload -U vcs_info && vcs_info

zmodload zsh/complist
zmodload zsh/terminfo


setopt \
      autocd \
      ksh_glob \
      extendedglob \
      prompt_subst \
      inc_append_history

bindkey -v

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for r in $HOME/.zsh/*.zsh; do
        if [[ $DEBUG > 0 ]]; then
                echo "zsh: sourcing $r"
        fi
        source $r
done
eval $( dircolors -b $HOME/.zsh/LS_COLORS )
