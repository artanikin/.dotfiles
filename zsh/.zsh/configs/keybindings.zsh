# Fuzzy match against history, edit selected value
_uniqe_without_sort() { awk '!x[$0]++' }
_fuzzy_history() {
  zle -U "$(
    history | \
    tail -2000 | \
    sed 's/ *[0-9]* *//' | \
    _uniqe_without_sort | \
    fzf-tmux --tac --reverse --no-sort
  )"
}
zle -N fuzzy-history _fuzzy_history
bindkey '^r' fuzzy-history

bindkey "^P" history-beginning-search-backward # Ctrl+P
bindkey "^N" history-beginning-search-forward  # Ctrl+N
