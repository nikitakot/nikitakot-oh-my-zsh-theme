parse_git_branch() {
    git branch --show-current 2>/dev/null
}

PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%} '
PROMPT+='%{$fg[magenta]%}$(parse_git_branch)%{$reset_color%} '
PROMPT+='%{$fg[blue]%}$(node -v 2>/dev/null)%{$reset_color%} '
