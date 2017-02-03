# sourced by interactive shell after sourcing 00-environment.zsh file
export CLICOLOR=1
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILESIZE=1000
export HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
export LESS='-F -g -i -M -R -S -w -X -z-4'
export LESS_TERMCAP_mb=$(printf "\e[1;31m")
export LESS_TERMCAP_md=$(printf "\e[0;93m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;104;30m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[1;32m")
export LESSCHARSET="UTF-8"
export PAGER="less"
export MANPAGER="$PAGER"
export SDCV_PAGER="$PAGER"
export _NROFF_U=1

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"

#export DISPLAY=:0

export SHELL='/bin/zsh'
export SUDO_PROMPT="[30;43m%p[m@[30;41m%h[m [30;45m[sudo make me a sandwich][m : "

export CPPFLAGS="-D_FORTIFY_SOURCE=2"
export CFLAGS="-march=native -mtune=native -O2 -pipe -fstack-protector-strong --param=ssp-buffer-size=4 -fdiagnostics-color=auto -flto=8"
export CXXFLAGS="${CFLAGS}"
LDFLAGS="-B/usr/bin/ld.gold -fuse-ld=gold" #use gold linker with clang & use gold linker with gcc
export LDFLAGS="${LDFLAGS} -Wl,-O1,--sort-common,--as-needed,-z,relro  -Wl,--enable-new-dtags  -Wl,--hash-style=gnu -Wl,-flto=8" # Bdirect # -zdynsort # -hashvals
export MAKEFLAGS="-j$(nproc) -Otarget"
export DEBUG_CFLAGS="-g -fvar-tracking-assignments"
export DEBUG_CXXFLAGS="${DEBUG_CFLAGS}"
export ARCHFLAGS="-arch x86_64"

[ -n "$TMUX" ] && export TERM="screen-256color"

# mutt background fix
export COLORFGBG="default;default"

#CPAN
export PERL5LIB="$HOME/.local/lib/perl5${PERL5LIB+:}${PERL5LIB}"
export PERL_LOCAL_LIB_ROOT="$HOME/.local${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"
export PERL_MB_OPT="--install_base '$HOME/.local'"
export PERL_MM_OPT="INSTALL_BASE=$HOME/.local"

# RUBY GEM & BUNDLE
export GEM_HOME=$HOME/.local/lib/ruby
export GEM_SPEC_CACHE=$GEM_HOME/specs

# cscope DB file path
export CSCOPE_DB=$HOME/git/cscope.out

# Android toolchains
export ANDROID_NDK=$HOME/archive/android-sdk/ndk-bundle/

export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
