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






alias ZSHCONFIGEDIT="cd ~/.dotfiles ;  nvim ; cd - && source ~/.zshrc"



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

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


source <(ng completion script)
eval "$(zoxide init zsh)"



source ~/.dotfiles/aliases/index.zsh

