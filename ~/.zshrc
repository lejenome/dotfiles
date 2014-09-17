autoload -U colors && colors
fpath=( $fpath ~/.zsh/completion )
autoload -U compinit && compinit
autoload -U vcs_info && vcs_info

zmodload zsh/complist
zmodload zsh/terminfo

bindkey -v

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for r in $HOME/.zsh/*.zsh; do
        if [[ $DEBUG > 0 ]]; then
                echo "zsh: sourcing $r"
        fi
        source $r
done
eval $( dircolors -b $HOME/.zsh/LS_COLORS )
