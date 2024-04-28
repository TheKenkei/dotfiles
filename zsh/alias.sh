alias lg="lazygit" 

alias precommit="npm run eslint ; npm run prettier && npm run test && npm run typecheck && npm run build && echo COMPLETE!!!"
alias npm-clear="rm -rf ~/.npm; rm -rf ~/.cache"

# TMUX 
alias t-routelink="tmux new -s routelink -c ~/projects/RouteLink.ru|| tmux a -t routelink"
alias t-nvim-config="tmux new -s nvim-config -c ~/.config/nvim || tmux a -t nvim-config"

alias update="source ~/.zshrc"
alias brew-update="brew update -d --auto-update --verbose --force --debug"
