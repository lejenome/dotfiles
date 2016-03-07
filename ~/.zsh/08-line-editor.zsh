## fix for st: http://git.suckless.org/st/tree/FAQ
#function zle-line-init () { echoti smkx }
#function zle-line-finish () { echoti rmkx }
#zle -N zle-line-init
#zle -N zle-line-finish
zle -l zle-line-init && zle -D zle-line-init
zle -l zle-line-finish && zle -D zle-line-finish
