# Install 

ln -s  $PWD/zshrc ~/.zshrc ;
ln -s  $PWD/tmux.conf ~/.tmux.conf ;



# Zsh plugins 

```

zstyle ':omz:plugins:alias-finder' autoload yes # по умолчанию отключено
zstyle ':omz:plugins:alias-finder' longer yes # по умолчанию отключено
zstyle ':omz:plugins:alias-finder' exact yes # по умолчанию отключено
zstyle ':omz:plugins:alias-finder' cheaper yes # по умолчанию отключено

plugins=(
    alias-finder
    brew
    bun
    colored-man-pages
    composer
    debian
    docker
    docker-compose
    extract
    eza
    fzf
    gh
    git
    git-flow
    git-prompt
    ng
    npm
    nvm
    pre-commit
    ssh
    sudo
    themes
    tmux
    web-search
    yarn
    z
    zoxide
    zsh-syntax-highlighting
    zsh-autosuggestions
)
```
    
