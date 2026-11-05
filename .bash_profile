__BUILD_PS1() {
    local lexit=$?
    local branch=$(git branch --show-current 2>/dev/null)
    local lpwd=${PWD/#$HOME/\~}

    local R='\[\e[0m\]'       # reset
    local D='\[\e[90m\]'      # dim gray
    local C_TIME="${D}"
    local C_PATH='\[\e[36m\]' # cyan
    local C_BR='\[\e[33m\]'   # yellow
    local C_OK='\[\e[32m\]'   # green
    local C_FL='\[\e[31m\]'   # red
    local C_PMP='\[\e[34m\]'  # blue

    local lstatus=$([ $lexit -eq 0 ] && echo "🍺 ${C_OK}${lexit}${R}" || echo "🔥 ${C_FL}${lexit}${R}")
    local len=$((${#lpwd} + ${#branch} + ${#lstatus} + 12))
    local cols=${COLUMNS:-$(tput cols)}
    
    local filler=""
    if (( cols > len )); then
        printf -v filler '─%.0s' $(seq 1 $((cols - len)))
    fi

    PS1="${D}╭── (${C_TIME}\t${D} <${C_PATH}\w${D}>) ${lstatus} ${D}[  ${branch}${D} ] ${filler}${R} 💻\n╰${C_PMP}❯${R} "
}
PROMPT_COMMAND=__BUILD_PS1

export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFa --color'
alias vi=nvim
alias i7='PATH=~/.local/bin:$PATH mosh i7 -- tmux new -A -s i7'
alias z='PATH=~/.local/bin:$PATH mosh z -- tmux new -A -s z'

bind '"\e3":"#"'


# PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
# export PATH


v ()
{
    local f
    f=$(mktemp ~/.yt/tmp.XXXXXX) &&
        yt-dlp --progress -t mp4 -o "$f.mp4" "$1" "${@:2}" &&
        mpv --pause "$f.mp4"
    rm -f "$f" "$f.mp4"
}


# Added by Antigravity CLI installer
# export PATH="/Users/alireza/.local/bin:$PATH"
