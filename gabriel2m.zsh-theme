PROMPT=$'%{$fg_bold[green]%}%~%{$reset_color%} $(git_prompt_info)\
%{$FG[032]%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[110]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

precmd() {
    # Print a newline before the prompt, unless it's the
    # first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}

zle_highlight+=('paste:none')

