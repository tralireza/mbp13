export PS1='(\t <\w>) $((($? == 0)) && echo 🍺 || echo 🔥) \$ '
export PS1='┌── (\t <\w>) $((($? == 0)) && echo 🍺 || echo 🔥) [  $(git branch -q --show-current 2>/dev/null) ] `printf '%.s─' $(seq $(($(pwd|sed 's#$HOME#~#'|wc -c)+$(git branch -q --show-current 2>/dev/null | tr -d '\n' | wc -c) + 31)) $(tput cols))` 💻\n└\$ '

export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFa --color'

bind '"\e3":"#"'
