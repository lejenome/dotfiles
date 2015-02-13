# sourced by interactive shell after sourcing 00-environment.zsh file
export CLICOLOR=1
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILESIZE=1000
export HISTFILE="$HOME/.zsh_history"
export LESS='-F -g -i -M -R -S -w -X -z-4'
#export DISPLAY=:0

export SHELL='/bin/zsh'

export CPPFLAGS="-D_FORTIFY_SOURCE=2"
export CFLAGS="-march=native -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -fdiagnostics-color=auto" # -flto
export CXXFLAGS=${CFLAGS}
export LDFLAGS="-Wl,-O1,--sort-common,--as-needed,-z,relro  -Wl,--enable-new-dtags  -Wl,--hash-style=gnu -Wl,-flto" # --fuse-ld=gold #  Bdirect  # -zdynsort # -hashvals #  -Wl,-flto ### -Wl,--hash-style=gnu ###  -Wl,--enable-new-dtags
export MAKEFLAGS="-j8"
export DEBUG_CFLAGS="-g -fvar-tracking-assignments"
export DEBUG_CXXFLAGS="-g -fvar-tracking-assignments"
export ARCHFLAGS="-arch x86_64"

[ -n "$TMUX" ] && export TERM="screen-256color"

# mutt background fix
export COLORFGBG="default;default"

#CPAN
export PERL5LIB="$HOME/.perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"
export PERL_LOCAL_LIB_ROOT="$HOME/.perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"
export PERL_MB_OPT="--install_base \"$HOME/.perl5\""
export PERL_MM_OPT="INSTALL_BASE=$HOME/.perl5"

# RUBY GEM & BUNDLE
export GEM_HOME="$HOME/.gem"
