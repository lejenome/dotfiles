export PATH="$PATH:$BIN_HOME:/sbin:/usr/sbin:/usr/local/bin"

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.zsh_history
export DISPLAY=:0

export SHELL='/bin/zsh'
export EDITOR='vim'
export MANPAGER='vimpager'

if [ -e /etc/debian_version ];
then
    export CPPFLAGS="-D_FORTIFY_SOURCE=2"
    export CFLAGS="-march=native -O2 -pipe -fstack-protector --param=ssp-buffer-size=4"
    export CXXFLAGS="${CFLAGS}"
    export LDFLAGS="-Wl,-O1,--sort-common,--as-needed,-z,relro  -Wl,--enable-new-dtags  -Wl,--hash-style=gnu"
    export MAKEFLAGS="-j8"
    export DEBUG_CFLAGS="-g -fvar-tracking-assignments"
    export DEBUG_CXXFLAGS="-g -fvar-tracking-assignments"
fi
[ -n "$TMUX" ] && export TERM=screen-256color
# mutt background fix
COLORFGBG="default;default"
