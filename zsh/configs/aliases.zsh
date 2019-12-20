alias dl="cd ~/Downloads/"
alias cp="cp -ivr"
alias scp="scp -r"
alias rm="rm -ivr"
alias mv="mv -iv"
alias mkdir="mkdir -p"
alias x="ranger ."
# alias ls="ls -FGh"
# alias ll="ls -laFGh"
# alias ll="exa --long --all --header --git --sort=ext"
# alias llt2="ll --tree --level=2"
alias ls="lsd -l"
alias ll="ls"
alias lsa="ls -a"
alias dotfiles="cd ~/.dotfiles"
alias dt="dotfiles"
alias sed="sed -E"
alias grep="rg"
alias -g G="| rg "
alias server="python -m SimpleHTTPServer 8000"
alias tmux="tmux -2"
alias mux="tmuxinator"
alias vim="nvim"
alias v="vim"
alias reload!="source ~/.zshrc"
alias gcob='git checkout $(git branch | fzf)'
alias fz="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort' --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
alias vfz='vim $(fz)'
alias preview="fzf --preview 'bat --color \"always\" --line-range 0:30 {}'"
alias n="nnn"

alias be="bundle exec"
alias rspec="clear; rspec"
alias fs="foreman start"
alias rr="be rake routes"
alias rrg="be rake routes G"
alias sc="spring rails console"
alias sg="spring rails generate"
alias sr="spring rake"
alias srr="spring rake routes"
alias srg="spring rake routes G"
alias st="spring rspec"
alias rails="bundle exec rails"
alias rake="bundle exec rake"

# SSH fix for working with xterm-color256-italic
alias ssh="TERM=xterm-256color ssh"

# quick config
alias vimconfig='vim ~/.vimrc ~/.vimrc.local'
alias muxconfig='vim ~/.tmux.conf'
alias sshconfig='vim ~/.ssh/config'
alias aliasconfig='vim ~/.zsh/configs/aliases.zsh && source ~/.zsh/config/aliases.zsh'
alias hostsconfig='sudo nvim /etc/hosts'
alias zshconfig="vim ~/.zshrc && source ~/.zshrc"

# Docker
alias dc='docker-compose'
alias dcr='docker-compose run --rm'

# curl
# usage postjson '{"key": "value"}' http://example.com/create_record
alias postjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d '
# usage postjson http://example.com/record/1
alias getjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json"'
