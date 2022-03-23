# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/lejenome/.local/share/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/lejenome/.local/share/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lejenome//.sdkman"
[[ -s "/home/lejenome//.sdkman/bin/sdkman-init.sh" ]] && source "/home/lejenome//.sdkman/bin/sdkman-init.sh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
