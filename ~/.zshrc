autoload -U colors && colors
fpath=( $fpath ~/.zsh/completion )
autoload -U compinit && compinit
autoload -U vcs_info && vcs_info
autoload -U edit-command-line && zle -N edit-command-line \
	&& bindkey -M vicmd v edit-command-line

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

PATH="/home/lejenome/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/lejenome/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/lejenome/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/lejenome/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/lejenome/perl5"; export PERL_MM_OPT;
