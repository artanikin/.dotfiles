export MODE_CURSOR_VICMD="green block"
export MODE_CURSOR_VIINS="#20d08a blinking bar"
export MODE_CURSOR_SEARCH="#ff00ff blinking underline"

export MODE_INDICATOR_VIINS='%F{15}<%F{8}INSERT<%f'
export MODE_INDICATOR_VICMD='%F{10}<%F{2}NORMAL<%f'
export MODE_INDICATOR_REPLACE='%F{9}<%F{1}REPLACE<%f'
export MODE_INDICATOR_SEARCH='%F{13}<%F{5}SEARCH<%f'
export MODE_INDICATOR_VISUAL='%F{12}<%F{4}VISUAL<%f'
export MODE_INDICATOR_VLINE='%F{12}<%F{4}V-LINE<%f'

zplug "softmoth/zsh-vim-mode"

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
