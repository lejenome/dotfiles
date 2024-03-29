# ignore completion to commands we don't have
zstyle ':completion:*:functions'          ignored-patterns '_*'

# format autocompletion style
zstyle ':completion:*:descriptions'       format "%{$c1%}%d%{$reset_color%}"
zstyle ':completion:*:corrections'        format "%{$c3%}%d%{$reset_color%}"
zstyle ':completion:*:messages'           format "%{$c1%}%d%{$reset_color%}"
zstyle ':completion:*:warnings'           format "%{$c1%}%d%{$reset_color%}"

# zstyle show completion menu if 2 or more items to select
zstyle ':completion:*'                    menu select=2

# zstyle kill menu
zstyle ':completion:*:*:kill:*'           menu yes select
zstyle ':completion:*:kill:*'             force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

## VCS
# vcs_info
zstyle ':vcs_info:*'                      enable git hg svn bzr
# check-for-changes can be really slow.
# you should disable it, if you work with large repositories   
#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:*' unstagedstr '%F{62}D%F{237}IRTY%f'  # display ¹ if there are unstaged changes
#zstyle ':vcs_info:*' stagedstr '%F{62}S%F{237}TAGED'    # display ² if there are staged changes
zstyle ':vcs_info:*' actionformats "${FMT_BRANCH}${FMT_ACTION}" "${FMT_PATH}"
zstyle ':vcs_info:*' formats       "${FMT_BRANCH}"              "${FMT_PATH}"
zstyle ':vcs_info:*' nvcsformats   ""                           "%~"


zstyle ':completion:*'                       accept-exact '*(N)'
zstyle ':completion:*'                       separate-sections 'yes'
zstyle ':completion:*'                       list-dirs-first true
zstyle ':completion:*:default'               list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*'                       menu select=200
zstyle ':completion:*'                       use-perl=1
zstyle ':completion:*'                       my-accounts="$EMAIL"

zstyle ':completion:*'                       squeeze-slashes true
zstyle ':completion:*:cd:*'                  ignore-parents parent pwd
#zstyle ':completion:*:cd:*'                  tag-order 'named-directories'

zstyle ':completion:*:(all-|)files'          ignored-patterns '*.un~'
zstyle ':completion:*:*:kill:*:processes' \
  list-colors '=(#b) #([0-9]#)*=0=01;31'

zstyle ':completion::complete:*'             use-cache on
zstyle ':completion::complete:*'             cache-path "$HOME/.local/share/zsh/zcompcache"
zstyle ':completion:*:processes'             command 'ps -axw'
zstyle ':completion:*:processes-names'       command 'ps -awxho command'
zstyle ':completion:*'                       matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:functions'             ignored-patterns '_*'

zstyle ':completion:*' group-name            ''
zstyle ':completion:*:*:(mplayer|mpv):*'           tag-order files
zstyle ':completion:*:*:(mplayer|mpv):*'           file-patterns   \
       '*.(rmvb|mkv|mpg|wmv|mpeg|avi|flv|mp3|mp4|flac|ogg|webm):video' \
       '*:all-files' '*(-/):directories'

zstyle ':completion:*:*:(vim|rview|vimdiff|xxd|nvim):*:*files' \
  ignored-patterns '*~|*.(old|bak|aux|zwc|viminfo|rxvt-*|zcompdump*|zcompcache)|pm_to_blib|cover_db|blib' \
  file-sort modification
zstyle ':completion:*:*:(vim|rview|vimdiff|xxd|nvim):*' \
  file-sort modification
zstyle ':completion:*:*:(vim|rview|vimdiff|xxd|nvim):*' \
  tag-order files
#zstyle ':completion:*:vim:*:directories' ignored-patterns \*

zstyle ':completion:*:*:(scp):*' \
  file-sort modification

zstyle ':completion:*:*:(cd):*:*files' ignored-patterns '*~' file-sort access
zstyle ':completion:*:*:(cd):*'        file-sort access
zstyle ':completion:*:*:(cd):*'        menu select
zstyle ':completion:*:*:(cd):*'        completer _history

zstyle ':completion:*:*:perl:*'        file-patterns '*'


zstyle ':completion:*:descriptions' \
  format $'%{- \e[38;5;137;1m\e[48;5;234m%}%B%d%b%{\e[m%}'
zstyle ':completion:*:warnings' \
  format $'%{No match for \e[38;5;240;1m%}%d%{\e[m%}'

zstyle ':completion:*:*:(apvlv|zathura):*'             tag-order files

zstyle ':completion:most-accessed-file:*' match-original both
zstyle ':completion:most-accessed-file:*' file-sort access
zstyle ':completion:most-accessed-file:*' file-patterns '*:all\ files'
zstyle ':completion:most-accessed-file:*' hidden all
zstyle ':completion:most-accessed-file:*' completer _files


zstyle ':completion:*:scp:*' group-order \
      users files all-files hosts-domain hosts-host hosts-ipaddr

zstyle ':completion:*:ssh:*' tag-order \
      users 'hosts:-host hosts:-domain:domain hosts:-ipaddr:IP\ address *'

zstyle ':completion:*:ssh:*' group-order \
      hosts-domain hosts-host users hosts-ipaddr

zstyle ':completion:*:(ssh|scp):*:hosts-host' ignored-patterns \
      '*.*' loopback localhost

zstyle ':completion:*:(ssh|scp):*:hosts-domain' ignored-patterns \
      '<->.<->.<->.<->' '^*.*' '*@*'

zstyle ':completion:*:(ssh|scp):*:hosts-ipaddr' ignored-patterns \
      '^<->.<->.<->.<->' '127.0.0.<->'

zstyle ':completion:*:(ssh|scp):*:users' ignored-patterns \
      adm bin daemon halt lp named shutdown sync


zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
        dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
        hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
        mailman mailnull mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
        operator pcap postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs
zstyle '*' single-ignored show

if whence dircolors >/dev/null; then
  if [ -d ~/git/LS_COLORS/LS_COLORS ]; then
  	eval $( dircolors -b ~/git/LS_COLORS/LS_COLORS )
	zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  fi
  # alias ls='ls --color'
else
  export CLICOLOR=1
  zstyle ':completion:*:default' list-colors ''
fi
