# autoload -Uz vcs_info
# precmd() { vcs_info }

# zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:git:*' formats "%{$fg[yellow]%}%b%{$reset_color%} %{$fg[red]%}%m%u%c%{$reset_color%} "

# setopt PROMPT_SUBST
# PROMPT='%{$fg[red]%}%n%{$reset_color%} in %{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%} ${vcs_info_msg_0_}$ '

# PURE prompt
prompt_newline='%666v'
PROMPT=" $PROMPT"
PURE_GIT_DOWN_ARROW="⇣"
PURE_GIT_UP_ARROW="⇡"
