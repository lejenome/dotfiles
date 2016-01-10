# sourced by login shell: .zprofile & .bash_profile.

export PATH="$PATH:/sbin:/usr/sbin:/usr/local/bin:${HOME}/.node/bin:${HOME}/.gem/bin"
[ -e ~/.local/bin ] && export PATH="$HOME/.local/bin:$PATH"

# PERL PATH
[ -d /usr/bin/site_perl ] && export PATH="$PATH:/usr/bin/site_perl"
[ -d /usr/lib/perl5/site_perl/bin ] && export PATH="$PATH:/usr/lib/perl5/site_perl/bin"
[ -d /usr/bin/vendor_perl ] && export PATH="$PATH:/usr/bin/vendor_perl"
[ -d /usr/lib/perl5/vendor_perl/bin ] && export PATH="$PATH:/usr/lib/perl5/vendor_perl/bin"
[ -d /usr/bin/core_perl ] && export PATH="$PATH:/usr/bin/core_perl"
[ -d "$HOME/.perl5/bin" ] && export PATH="${PATH}:$HOME/.perl5/bin"

# GEM PATH
[ -d "$HOME/.gem" ] && export PATH="$(ls -d ${HOME}/.gem/ruby/*/bin | tr '\n' ':'):${PATH}"

# DEFAULT tools and directories
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export BROWSER='firefox'
[ -e /usr/bin/vimpager ] && export MANPAGER='/usr/bin/vimpager'
export MAIL="$HOME/mail"
export EMAIL='bmoez.j@gmail.com'
export TERMINAL='urxvtc'

# node modules additional lookup dirs
export NODE_PATH="$HOME/.node/lib/node_modules"
# mesa & r600 options
export R600_DEBUG=hyperz
export R600_STREAMOUT=1
export R600_HYPERZ=1
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600

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

# SDL, fix mouse moves too fast
export SDL_VIDEO_X11_DGAMOUSE=0
export SDL_AUDIODRIVER=alsa # force alsa audio driver

# XKB
export XKB_DEFAULT_LAYOUT=fr
#export XKB_DEFAULT_VARIANT=azerty

# XDG envars
if [[ -e "$HOME/.config/user-dirs.dirs" ]]; then
	source "$HOME/.config/user-dirs.dirs"
	for var in $(grep "^XDG_" "$HOME/.config/user-dirs.dirs"); do
		export ${var%%=*}
	done
fi

# Java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on
	-Dswing.aatext=true
	-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
	-Djava.net.useSystemProxies=true
	-Dsun.java2d.opengl=true'
