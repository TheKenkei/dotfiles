export EDITOR=nvim
export H=/mnt/h/
export G=/mnt/g/
export DOWNLOAD=/mnt/g/Download/
export NVM_DIR="$HOME/.nvm"
export ZSH_CONFIG=${ZSH_CUSTOM}/kenkei/custom.zsh
export NVIM_CONFIG=${HOME}/.config/nvim
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/sbin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.2/sbin:$PATH"
export PATH="/home/kenkei/.bun/bin:$PATH"



# Определение основного приглашения
PROMPT='%{$fg[cyan]%}%~%{$reset_color%} %(?:%{$fg_bold[green]%}%1{➜%}:%{$fg_bold[red]%}%1{➜%}) '

# Определение правого приглашения
RPROMPT='$(git_prompt_info)'

# Настройки для вывода информации о Git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


plugins=(git fzf-zsh-plugin sudo gh z brew npm docker docker-compose gh zsh-syntax-highlighting zsh-autosuggestions web-search dirhistory)

alias dc="docker compose"
alias drestart="docker compose down && docker compose up -d && docker compose logs -f"
alias de="docker exec -it "

alias de-db="docker exec -it postgres su postgres"
alias dl="docker logs -f "
alias nginx-start-fast="docker run --name nginx -v .:/app:ro -p 80:80 --rm nginx:alpine"

alias update="clear && echo source ~/.zshrc && source ~/.zshrc"
alias ls="eza --tree --group-directories-first --level=1 --icons=always --no-time  --no-user --no-permissions"
alias l="ls --long --all -h --git"
alias l-size="l --total-size"
alias lg="lazygit"
alias cl="clear"

alias ZSHCONFIGEDIT="nvim ~/.dotfiles/zshrc"
alias NVIMCONFIGEDIT="cd ~/.config/nvim/lua ; nvim ; cd - "

alias brew-update="brew update -d --auto-update --verbose --force --debug"
alias mkdir="mkdir -p"
alias bun-clear="rm -rf ~/.cache/ ~/.bun/install/cache/ ~/.npm/"
alias nvim-cache-clear="rm -rf  ~/.local/{share,state}/nvim ~/.cache/nvim"
alias cat="bat"

bindkey "^[h" backward-char  # Перемещение влево на один символ
bindkey "^[l" forward-char   # Перемещение вправо на один символ
bindkey "^[w" forward-word
bindkey "^[b" backward-word
bindkey "^[d" kill-word
bindkey "^[D" kill-line
zle-end-of-word() {
zle forward-word      # Перемещаемся к началу следующего слова
zle backward-char     # Возвращаемся на один символ назад
}
zle -N zle-end-of-word  # Регистрируем функцию как zle-команду
bindkey "^[e" zle-end-of-word  # Назначаем команду на Alt + e

export LAZY="${HOME}/.local/share/nvim/lazy"
export MASON="${HOME}/.local/share/nvim/mason"
alias vim="nvim"
alias v="nvim"



alias npm="npm -d"
alias nx="npx nx"
alias npm-clear="rm -rf ~/.npm ~/.cache/"
alias nr="npm run"
alias nrs="npm run start"
alias nrb="npm run build"
alias npmi="rm -rf $HOME/.npm ~/.cache/ node_modules/ && npm i"
alias yarni="rm -rf $HOME/.yarn/berry/ $HOME/.cache/yarn node_modules && yarn"
alias precommit="rm -rf node_modules && npm ci && npm run typecheck && npm run test && npm run build && npm run start"
alias precommit-pnpm="rm -rf node_modules && pnpm i && pnpm run typecheck && pnpm run test && pnpm run build && pnpm run start"

alias br="bun run"
alias bi="bun install"

targz() {
    echo "taring $1 in $1.tar.gz ... "
    tar -czf $1.tar.gz $1
    if [ "$2" = "--rm" ]; then
        echo "deling $1 ..."
        rm -rf $1
    fi
    echo "done!"
}




backup() {
    local source_dir="$1"
    local backup_dir="${source_dir}-backup"
    local remove_source="$2"

    echo "Backing up ${source_dir} to ${backup_dir}..."
    cp -r "${source_dir}" "${backup_dir}"

    if [[ "${remove_source}" == "--rm" ]]; then
        echo "Removing ${source_dir}..."
        rm -rf "${source_dir}"
    fi

    echo "Done!"
}

yy() {
    local temp_file="$(mktemp -t "yazi_cwd.XXXXXX")"
    yazi "$@" --cwd-file="$temp_file"
    local new_directory="$(cat -- "$temp_file")"
    if [ -n "$new_directory" ] && [ "$new_directory" != "$PWD" ]; then
        cd "$new_directory"
    fi
    rm -f -- "$temp_file"
}
ff ()
{
    fd . | grep $1
}


source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


source <(ng completion script)

