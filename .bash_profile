export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GF'

export PATH=$PATH:~/go/bin:/Library/Frameworks/Python.framework/Versions/Current/bin
bind '"\e3":"#"'

export PS1='(\[$(tput md)\]\t <\w>\[$(tput me)\]) $((($? == 0)) && echo 🍺 || echo 🔥) \$ '
