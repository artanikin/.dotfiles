fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

## case-insensitive (all), partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*' menu select
