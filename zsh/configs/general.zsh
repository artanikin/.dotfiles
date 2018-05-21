export TERM=xterm-256color-italic
export LANG=en_US.UTF-8
export EDITOR=nvim
export GREP_OPTIONS='--color=auto'
export DEFAULT_USER='arty'

# Pure theme customization
export PURE_PROMPT_SYMBOL=$

# For add to $PATH from /etc/paths.d
eval `/usr/libexec/path_helper -s`

setopt auto_cd
cdpath=($HOME/projects)
