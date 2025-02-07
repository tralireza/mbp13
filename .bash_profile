export PS1='(\t <\w>) $((($? == 0)) && echo 🍺 || echo 🔥) \$ '
export PS1='┌── (\t <\w>) $((($? == 0)) && echo 🍺 || echo 🔥) [  $(git branch --show-current) ] `printf '%.s─' $(seq $(($(pwd|sed 's#$HOME#~#'|wc -c)+$(git branch --show-current|wc -c)+30)) $(tput cols))` 💻\n└\$ '

export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFa --color'

bind '"\e3":"#"'
