#VIM MOTION 
#
bindkey "^[h" backward-char  # Перемещение влево на один символ
bindkey "^[l" forward-char   # Перемещение вправо на один символ

# set -o vi
# bindkey -M viins "j" down-line-or-history
# bindkey -M viins "k" up-line-or-history


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
