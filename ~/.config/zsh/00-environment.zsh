# sourced by login shell: .zprofile & .bash_profile.
PATH="/usr/bin"
[ -d "/bin" -a ! -L "/bin" ] && PATH="$PATH:/bin"
[ -d "/sbin" -a ! -L "/sbin" ] && PATH="$PATH:/sbin"
[ -d "/usr/sbin" -a ! -L "/usr/sbin" ] && PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/local/bin:/usr/local/sbin"
[ -e ~/.local/bin ] && PATH="$HOME/.local/bin:$PATH"

# PERL PATH
[ -d /usr/bin/site_perl ] && PATH="$PATH:/usr/bin/site_perl"
[ -d /usr/lib/perl5/site_perl/bin ] && PATH="$PATH:/usr/lib/perl5/site_perl/bin"
[ -d /usr/bin/vendor_perl ] && PATH="$PATH:/usr/bin/vendor_perl"
[ -d /usr/lib/perl5/vendor_perl/bin ] && PATH="$PATH:/usr/lib/perl5/vendor_perl/bin"
[ -d /usr/bin/core_perl ] && PATH="$PATH:/usr/bin/core_perl"

[ -d /usr/share/perl6/vendor/bin ] && PATH="$PATH:/usr/share/perl6/vendor/bin"
[ -d "$HOME/.cargo/bin" ] && PATH="$PATH:$HOME/.cargo/bin"

# GEM PATH
[ -d "$HOME/.local/lib/ruby/gems" ] && PATH="$(ls -rd ${HOME}/.local/lib/ruby/gems/ruby/*/bin | tr '\n' ':')${PATH}"
export PATH

# DEFAULT tools and directories
export NAME="Moez Bouhlel"
export MAIL="$HOME/mail"
export EMAIL='bmoez.j@gmail.com'
export TERMINAL='/usr/bin/urxvtc'
export TZ="Africa/Tunis"

export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export BROWSER='qutebrowser'
export PAGER='less'

# node modules additional lookup dirs
export NODE_PATH="$HOME/.node/lib/node_modules"
# mesa & r600 options
export R600_DEBUG=hyperz
export R600_STREAMOUT=1
export R600_HYPERZ=1
# export LIBVA_DRIVER_NAME=vdpau
# export VDPAU_DRIVER=r600

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
export XKB_DEFAULT_LAYOUT=fr,us,ma
export XKB_DEFAULT_MODEL=pc105
export XKB_DEFAULT_OPTIONS=grp:rwin_toggle
#export XKB_DEFAULT_VARIANT=azerty

# XDG envars
if [[ -e "$HOME/.config/user-dirs.dirs" ]]; then
	source "$HOME/.config/user-dirs.dirs"
	for var in $(grep "^XDG_" "$HOME/.config/user-dirs.dirs"); do
		export ${var%%=*}
	done
fi

# Java
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on
	-Dswing.aatext=true
	-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
	-Djava.net.useSystemProxies=true
	-Dsun.java2d.opengl=true
	-Duser.home=$XDG_DATA_HOME/Java
	-Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine
	-Djava.net.preferIPv4Stack=true"

# Python
export PYTHONOPTIMIZE=1

# Steam
export STEAM_FRAME_FORCE_CLOSE=1
export STEAM_RUNTIME=0

# XML Catalog
export XML_CATALOG_FILES="${XDG_CONFIG_HOME}/xml/catalog.xml /etc/xml/catalog"

# SWAY
export SWAYSOCK="$XDG_RUNTIME_DIR"/sway-ipc.sock

# XDG CONFIG for some apps
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME"/gimp
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export LESSHISTFILE="$XDG_CACHE_HOME"/less_history
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME"/python-eggs
export RLWRAP_HOME="$XDG_DATA_HOME"/rlwrap
# export TMUX_TMPDIR="$XDG_RUNTIME_DIR"/tmux
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export RXVT_SOCKET="$XDG_RUNTIME_DIR"/urxvt-"$(hostname)"
export URXVT_PERL_LIB="$XDG_CONFIG_HOME"/urxvt/ext
export XENVIRONMENT="$XDG_CONFIG_HOME"/X11/xresources
export ICEAUTHORITY="$XDG_RUNTIME_DIR"/Xiceauthority
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ATOM_HOME="$XDG_DATA_HOME"/atom
export HGRCPATH=/etc/merical/hgrc:/etc/merical/hgrc.d/:"$XDG_CONFIG_HOME"/hg/hgrc:"$XDG_CONFIG_HOME"/hgrc.d
export VIMPERATOR_INIT=":source $XDG_CONFIG_HOME/vimperator/vimperatorrc"
export VIMPERATOR_RUNTIME="$XDG_CONFIG_HOME"/vimperator
export VIMPAGER_RC="$XDG_CONFIG_HOME"/vimpager/vimpagerrc
export GEMRC="$XDG_CONFIG_HOME"/gemrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export MAILCAP="$XDG_CONFIG_HOME/mailcap"
export MAILCAPS="$MAILCAP"
export CCACHE_DIR="$XDG_CACHE_HOME/ccache"
export VAGRANT_HOME="$XDG_DATA_HOME/vagrant"

export TASKRC="$XDG_CONFIG_HOME/taskrc"
export TASKDATA="$XDG_DATA_HOME/task"

export MANPATH=:"$XDG_DATA_HOME"/man
