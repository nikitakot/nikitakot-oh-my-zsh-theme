parse_git_branch() {
    git branch --show-current 2>/dev/null
}

parse_node_version() {
    node -v 2>/dev/null
}

NEWLINE=$'\n'
PROMPT='%{$fg[cyan]%}%3~%{$reset_color%} '
PROMPT+='%{$fg[magenta]%}$(parse_git_branch)%{$reset_color%} '
PROMPT+='%{$fg[green]%}$(parse_node_version)%{$reset_color%} ${NEWLINE}'
PROMPT+="%(?:%{$fg_bold[blue]%}➜ :%{$fg_bold[red]%}➜ )"

RPROMPT='${time}'

time_enabled="%(?.%{$fg[blue]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[blue]%}%*%{$reset_color%}"
time=$time_enabled