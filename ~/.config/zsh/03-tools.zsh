export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

export QHOME=$HOME/.local/share/q

alias qdeveloper='source /home/lejenome/.local/share/qdeveloper/config/config.profile; q /home/lejenome/.local/share/qdeveloper/launcher.q_ '
