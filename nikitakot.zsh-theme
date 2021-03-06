parse_git_branch() {
    local b
    b=$(git branch --show-current 2>/dev/null)
    if [[ -n $b ]]; then
        echo "$b "
    fi
}

parse_node_version() {
    local v
    v=$(node -v 2>/dev/null)
    if [[ -n $v ]]; then
        echo "$v "
    fi
}

NEWLINE=$'\n'
PROMPT='%{$fg_bold[cyan]%}%3~%{$reset_color%} '
PROMPT+='%{$fg[magenta]%}$(parse_git_branch)%{$reset_color%}'
PROMPT+='%{$fg[green]%}$(parse_node_version)%{$reset_color%}'
PROMPT+='${time}${NEWLINE}'
PROMPT+='%(?:%{$fg[cyan]%}$ :%{$fg[red]%}$ )%{$reset_color%}'

time_enabled="%(?.%{$fg[cyan]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[blue]%}%*%{$reset_color%}"
time=$time_enabled
