export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/Cellar

# Add my custom commands
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin/:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="${PATH}:${HOME}/Library/Python/3.7/bin"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"
export PATH="$PATH:$HOME/.cache/dein/repos/github.com/jez/vim-superman/bin"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

export LOCAL_CONFIG_HOME=$HOME/.config
export LOCAL_CACHE_HOME=$HOME/.cache
export LOCAL_DATA_HOME=$HOME/.local/share
export LOCAL_ZDOTDIR=$HOME/.zsh

# export TERM="xterm-256color-italic"

export JAVA_HOME_8=$(/usr/libexec/java_home -v1.8)
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME_14=$(/usr/libexec/java_home -v14)

# Java 8
export JAVA_HOME=$JAVA_HOME_8
export SDKROOT=$(xcrun --show-sdk-path)

export TMUX_PLUGIN_MANAGER_PATH="$HOME/.tmux/plugins"
export BAT_CONFIG_PATH="$HOME/.dotfiles/os/bat/bat.conf"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Hide docker legacy commands on `docker help`
export DOCKER_HIDE_LEGACY_COMMANDS=true

export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

# Save history in IEX
export ERL_AFLAGS="-kernel shell_history enabled"

export ASDF_DIR="~/.asdf"
. "$HOME/.cargo/env"

export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d . --color=never'
export FZF_DEFAULT_OPTS='
  --height 75% --multi --reverse
  --bind ctrl-f:page-down,ctrl-b:page-up
'
