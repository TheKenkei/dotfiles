export ALIASES_FOLDER="$ZSH_KENKEI_FOLDER/aliases"

source $ALIASES_FOLDER/docker.zsh
source $ALIASES_FOLDER/tmux.zsh
source $ALIASES_FOLDER/packages.zsh
source $ALIASES_FOLDER/nvim.zsh
source $ALIASES_FOLDER/motions.zsh



alias update="clear && echo source ~/.zshrc && source ~/.zshrc"
alias ls="eza --tree --group-directories-first --level=1 --icons=always --no-time  --no-user --no-permissions"
alias l="ls --long --all -h --git"
alias l-size="l --total-size"
alias lg="lazygit"
alias cl="clear"
alias ZSHCONFIGEDIT="cd  $ZSH_KENKEI_FOLDER && nvim && cd -  && clear && echo 'updating zsh config' && source $HOME/.zshrc"
alias NVIMCONFIGEDIT="cd ~/.config/nvim/lua ; nvim ; cd - "
alias brew-update="brew update -d --auto-update --verbose --force --debug"
alias mkdir="mkdir -p"
alias nginx_start_docker="docker run --rm -p 8080:8080 -v /home/kenkei/.config/nginx/nginx.conf:/etc/nginx/conf.d/nginx.conf -v .:/usr/share/nginx/html:ro  nginx"
alias bun-clear="rm -rf ~/.cache/ ~/.bun/install/cache/ ~/.npm/"
alias nvim-delete-all="rm -rf ~/.config/nvim ~/.local/{share,state}/nvim ~/.cache/nvim"
alias nvim-clear="rm -rf  ~/.local/{share,state}/nvim ~/.cache/nvim"
alias cat="bat"
