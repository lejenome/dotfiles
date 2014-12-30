export PATH="$PATH:$BIN_HOME:/sbin:/usr/sbin:/usr/local/bin:${HOME}/.node/bin"
[ -e ~/.local/bin ] && export PATH="$PATH:$HOME/.local/bin"

export CLICOLOR=1
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.zsh_history
export DISPLAY=:0

export SHELL='/bin/zsh'
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export BROWSER='/usr/bin/firefox'
[ -e /usr/bin/vimpager ] && export MANPAGER='/usr/bin/vimpager'


export CPPFLAGS="-D_FORTIFY_SOURCE=2"
export CFLAGS="-march=native -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -fdiagnostics-color=auto" # -flto
export CXXFLAGS=${CFLAGS}
export LDFLAGS="-Wl,-O1,--sort-common,--as-needed,-z,relro  -Wl,--enable-new-dtags  -Wl,--hash-style=gnu -Wl,-flto" # --fuse-ld=gold #  Bdirect  # -zdynsort # -hashvals #  -Wl,-flto ### -Wl,--hash-style=gnu ###  -Wl,--enable-new-dtags
export MAKEFLAGS="-j8"
export DEBUG_CFLAGS="-g -fvar-tracking-assignments"
export DEBUG_CXXFLAGS="-g -fvar-tracking-assignments"
export ARCHFLAGS="-arch x86_64"

[ -n "$TMUX" ] && export TERM=screen-256color

# mutt background fix
export COLORFGBG="default;default"
# mesa & r600 options
export R600_DEBUG=hyperz
export R600_STREAMOUT=1
export R600_HYPERZ=1
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600

# PERL
[ -d /usr/bin/site_perl ] && export PATH="$PATH:/usr/bin/site_perl"
[ -d /usr/lib/perl5/site_perl/bin ] && export PATH="$PATH:/usr/lib/perl5/site_perl/bin"
[ -d /usr/bin/vendor_perl ] && export PATH="$PATH:/usr/bin/vendor_perl"
[ -d /usr/lib/perl5/vendor_perl/bin ] && export PATH="$PATH:/usr/lib/perl5/vendor_perl/bin"
[ -d /usr/bin/core_perl ] && export PATH="$PATH:/usr/bin/core_perl"
#CPAN
export PATH="/home/lejenome/perl5/bin${PATH+:}${PATH}"
export PERL5LIB="/home/lejenome/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"
export PERL_LOCAL_LIB_ROOT="/home/lejenome/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"
export PERL_MB_OPT="--install_base \"/home/lejenome/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/lejenome/perl5"

# RUBY GEM & BUNDLE
export PATH="$(ls -d ${HOME}/.gem/ruby/*/bin | tr '\n' ':'):${PATH}"
export GEM_HOME=~/.gem

# Firefox
export MOZ_GLX_IGNORE_BLACKLIST=1
export MOZ_USE_OMTC=1
export MOZILLA_X11_XINITTHREADS=1
export MOX_X_THREADSAFE=1
export MOZ_ACCELERATED=1
export MOZ_DISABLE_CRASHREPORTER=1
export MOZ_DISABLE_PANGO=1

# FreeType
export FT2_SUBPIXEL_HINTING=1
