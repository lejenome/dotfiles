My Desktop Specification
========================

This is a list of tools and configuration of my system. I keep it for reference
in case I do a fresh install.

# Core

- **OS**: Arch Linux
- **Bootloader**: UEFI (efibootmgr)
- **FileSystem**:
    - btrfs + snaper + preload
    - eCryptFS

# Desktop Environment

- **Window Manager**:
    - X11 + i3
    - Wayland + Sway
- **Xorg Tools**:
    - redshift
    - dmenu
    - xset + xsel + xrdb + setxkbmap
    - xautolock
    - xdotool, keynev
- **Look & Feel**:
    - GTK3 theme: Numix
    - Icons theme: Numix
    - Fonts:
        - Source Code Pro
        - Awesome/Icons

# Terminal

- **Terminal Emulator**: rxvt-256-unicode
- **Terminal Multiplexer**: tmux
- **Shell**: zsh

# Network

- **Network Mananger**:
    - wpa_supplicant
    - systemd-networkd
- **Dynamic Domain**: ddclient
- **HTTP Proxy/Caching**: squid
- **DNS Caching**: dnsmasq
- **Access Point**: hostapd

# Utils

- **Music Player**:
    - mpd
    - ncmpcpp
    - mpc
- **Email**:
    - mutt
    - getmail
    - msmtpd
- **Social**:
    - weechat
    - bitlbee
- **RSS**: newbeuter
- **Video Player**: mpv
- **Image viewer**:
    - feh
    - sxiv
    - imv (gif)
- **Browser**:
    - qutebrowser
    - firefox + vimperator
- **Ebooks**:
    - zathura
    - FBReader
- **Todo**: todo.txt
- **File Explorer**: vifm
- **others**:
    - urlview
    - unclutter
    - ag | ack

# Developement

- **VCS**:
    - git
    - hg
    - svn
- **Editor/IDE**: vim (more in my vimrc)
- **Package Manager**:
    - npm
    - gem
    - pip
    - bower
- **REPL**:
    - ipython3
    - pry
    - cling
- **Virtualization**:
  - schroot
  - Docker
  - Qemu/kvm

# Troubleshooting:

- **General**: sysdig
- **Net**:
    - iftop
    - nethogs
    - nmap
- **I/O**: iotop
- **Procs**: htop
- **Firmware**: dmidecode
