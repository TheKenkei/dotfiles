export ZSH_KENKEI_FOLDER="$ZSH_CUSTOM/kenkei"
source $ZSH_KENKEI_FOLDER/exports/init.zsh
source $ZSH_KENKEI_FOLDER/aliases/init.zsh
source $ZSH_KENKEI_FOLDER/functions/init.zsh

export TMUX_THEME="onedark"
export PLAYWRIGHT_BROWSERS_PATH=$HOME/pw-browsers
# source $ZSH_KENKEI_FOLDER/themes/kenkei.zsh-theme; 


# bun completions
[ -s "/home/kenkei/.bun/_bun" ] && source "/home/kenkei/.bun/_bun"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[ ! -s "$ZSH/themes/kenkei.zsh-theme" ] && ln -s $ZSH_KENKEI_FOLDER/themes/kenkei.zsh-theme $ZSH/themes/kenkei.zsh-theme
