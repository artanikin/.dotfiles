alias ...="cd ../.."
alias ..="cd .."
alias cdb="cd -"
alias o="open"
alias c=clear
alias du="ncdu -e --color dark"
alias pfo='open -a "Finder.app" "$PWD"'
alias dl="cd ~/Downloads/"
alias cp="cp -ivr"
alias scp="scp -r"
alias rm="rm -ivr"
alias mv="mv -iv"
alias mkdir="mkdir -p"
alias ls="eza -l --icons"
alias ll="ls"
alias lsa="ls -a"
alias dotfiles="cd ~/.dotfiles"
alias dt="dotfiles"
alias sed="sed -E"
alias server="python -m SimpleHTTPServer 8000"
alias mux="tmuxinator"
alias tnew="tmux new -s `basename $PWD`"
alias vim="nvim"
alias v="nvim"
alias vf="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
alias vi="nvim --noplugin" # -u ~/.config/nvim/minimal.vim"
alias reload!="source ~/.zshrc"
alias gst='git status'
alias gcob='git branch | fzf | xargs -I {} git checkout {}'
alias goc="git ls-files -u | awk '{print \$4}' | sort -u | xargs -o nvim"
alias gom="git ls-files -m | xargs -o nvim"
alias gcpb="git branch --show-current | pbcopy"
alias gclearbr="git branch --merged master | grep -v '^\*' | grep -v 'master' | xargs -r git branch -d"
alias ff="fzf --preview 'bat --theme DarkNeon --color always {}' | xargs $EDITOR"
alias fz="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort' --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
alias vfz='nvim $(fz)'
alias preview="fzf --preview 'bat --color \"always\" --line-range 0:30 {}'"
alias sshcp="\cat ~/.ssh/id_rsa.pub | pbcopy"
alias sgo="sbm-cli service env -- go"

alias be="bundle exec"
alias rspec="clear; rspec"
alias fs="foreman start"
alias rr="be rake routes"
alias rrg="be rake routes G"
alias rails="bundle exec rails"
alias .rails="rails"
alias rake="bundle exec rake"
alias fix="git diff --name-only | uniq | xargs nvim"
alias lmig='vim $(find db/migrate -name "*"|sort|tail -1)'

# SSH fix for working with xterm-color256-italic
# alias ssh="TERM=xterm-256color ssh"

# quick config
alias vimconfig='nvim ~/.config/nvim'
alias muxconfig='nvim ~/.tmux.conf'
alias sshconfig='nvim ~/.ssh/config'
alias aliasconfig='nvim ~/.config/fish/aliases.fish && source ~/.config/fish/aliases.fish'
alias hostsconfig='sudo nvim /etc/hosts'
alias fishconfig="nvim ~/.config/fish && source ~/.config/fish/config.fish"
alias zshconfig="nvim ~/.zshrc && source ~/.zshrc"
alias ghosttyconfig="nvim ~/.config/ghostty/config"

# Docker
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dls='docker container ls'
alias dlog='docker container logs '
alias dlogf='docker container logs -f '
alias lzd='lazydocker'
alias stf6='set NAMESPACE6 paas-content-storefront-6; kubectl exec -n $NAMESPACE6 -it -c app-puma $(kubectl get pods -n $NAMESPACE6 | grep Running | grep app-stf-sbermarket | head -n 1 | awk "{print \$1}") -- /paas-entrypoint/entrypoint rails c'
alias stf6mc='set NAMESPACESTF6 paas-content-storefront-6; kubectl -n $NAMESPACESTF6 exec -c app $(kubectl -n $NAMESPACESTF6 get pods --field-selector=status.phase=Running -o name | grep app-stf-sbermarket | head -1) -- /paas-entrypoint/entrypoint env | grep -E "DATABASE_NAME|DATABASE_USER|DATABASE_PASSWORD"'
alias stf6mg='set NAMESPACESTF6 paas-content-storefront-6; kubectl -n $NAMESPACESTF6 port-forward $(kubectl -n $NAMESPACESTF6 get pods --field-selector=status.phase=Running -o name | grep app-stf-sbermarket | head -1) 3306'
alias shp6='set NAMESPACE6 paas-content-shopper-6; kubectl exec -it -n $NAMESPACE6 $(kubectl get pod -l "app.kubernetes.io/component=app" -o name -n $NAMESPACE6) -c app -- /paas-entrypoint/entrypoint /bin/bash -c "rails c  -- --nomultiline"'
alias shp6gf='set NAMESPACE6 paas-content-shopper-6; kubectl -n $NAMESPACE6 port-forward $(kubectl get pod -l "app.kubernetes.io/component=grpc-app" -o name -n $NAMESPACE6) 9001:9001'
alias shp6pg='set NAMESPACE6 paas-content-shopper-6; kubectl -n $NAMESPACE6 port-forward $(kubectl get pod -o name -n $NAMESPACE6 | grep pod/app | head -1) 15440:6432'

# Kubernetes
alias k='kubectl'

# curl
# usage postjson '{"key": "value"}' http://example.com/create_record
alias postjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d '
# usage postjson http://example.com/record/1
alias getjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json"'

# tmux
alias tsa="tmux attach-session -t"
alias tsk="tmux kill-session -t"
alias tsl="tmux list-sessions"
alias tsr="tmux rename-session -t"
