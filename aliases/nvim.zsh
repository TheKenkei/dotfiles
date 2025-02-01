export LAZY="${HOME}/.local/share/nvim/lazy"
export MASON="${HOME}/.local/share/nvim/mason"

alias nvim="nvim +NvimTreeToggle"
alias vim="nvim"
alias v="nvim"

alias NVIMCONFIGEDIT="cd ~/.config/nvim/lua ; nvim ; cd - "

alias nvim-cache-clear="rm -rf  ~/.local/state/nvim ~/.cache/nvim"
alias nvim-cache-clear-all="nvim-cache-clear && rm -rf ~/.local/share/nvim"
