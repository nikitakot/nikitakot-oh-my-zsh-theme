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
PROMPT='%{$fg[cyan]%}%3~%{$reset_color%} '
PROMPT+='%{$fg[magenta]%}$(parse_git_branch)%{$reset_color%}'
PROMPT+='%{$fg[green]%}$(parse_node_version)%{$reset_color%}${NEWLINE}'
PROMPT+='%(?:%{$fg_bold[blue]%}$ :%{$fg_bold[red]%}$ )%{$reset_color%}'

RPROMPT='${time}'

time_enabled="%(?.%{$fg[blue]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[blue]%}%*%{$reset_color%}"
time=$time_enabled
