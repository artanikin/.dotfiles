alias r=clear
alias dl="cd ~/Downloads/"
alias cp="cp -ivr"
alias scp="scp -r"
alias rm="rm -ivr"
alias mv="mv -iv"
alias mkdir="mkdir -p"
alias ls="exa -l --icons"
alias ll="ls"
alias lsa="ls -a"
alias dotfiles="cd ~/.dotfiles"
alias dt="dotfiles"
alias sed="sed -E"
alias grep="rg"
alias -g G="| rg "
alias server="python -m SimpleHTTPServer 8000"
# alias tmux="tmux -2"
alias tmux="TERM=xterm-256color tmux"
alias mux="tmuxinator"
alias tnew="tmux new -s `basename $PWD`"
alias vim="nvim"
alias v="vim"
alias vi="nvim --noplugin" # -u ~/.config/nvim/minimal.vim"
alias reload!="source ~/.zshrc"
alias gcob='git checkout $(git branch | fzf)'
alias gconf="git ls-files -u | awk '{print $4}' | sort -u | xargs -o nvim"
alias fz="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort' --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
alias vfz='vim $(fz)'
alias preview="fzf --preview 'bat --color \"always\" --line-range 0:30 {}'"
alias x="ranger ."
# alias man="vman"
alias cpssh="\cat ~/.ssh/id_rsa.pub | pbcopy"

alias be="bundle exec"
alias rspec="clear; rspec"
alias fs="foreman start"
alias rr="be rake routes"
alias rrg="be rake routes G"
alias rails="bundle exec rails"
alias .rails="rails"
alias rake="bundle exec rake"
alias fix="git diff --name-only | uniq | xargs nvim"

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
alias dls='docker container ls'
alias dlog='docker container logs '
alias dlogf='docker container logs -f '
alias lzd='lazydocker'
alias stf9='kubectl exec -n s-sb-stf9 -i -t -c puma $(kubectl get pods -n s-sb-stf9 | grep app-sbermarket) -- /bin/bash'
alias shp9='kubectl exec -n s-sh-shp9 -i -t -c puma $(kubectl get pods -n s-sh-shp9 | grep shopper-backend) -- /bin/bash'

# Kubernetes
alias k='kubectl'

# curl
# usage postjson '{"key": "value"}' http://example.com/create_record
alias postjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d '
# usage postjson http://example.com/record/1
alias getjson='curl -i -H "Accept: application/json" -H "Content-Type: application/json"'

fzf_find_edit() {
    local file=$(
      fzf --query="$1" --no-multi --select-1 --exit-0 \
          --preview 'bat --color=always --line-range :500 {}'
      )
    if [[ -n $file ]]; then
        $EDITOR "$file"
    fi
}

alias ffe='fzf_find_edit'

fzf_kube_connect() {
  # local name_template = '{{ range .items }}{{ printf "%s\n" .metadata.name }}{{ end }}'
  local selected_namespace = $(
    kubectl get namespaces -o go-template \
      --template='{{ range .items }}{{ printf "%s\n" .metadata.name }}{{ end }}' | \
      fzf --query="$1" --no-multi --select-1 --exit-0 \
          --preview 'bat --color=always --line-range :500 {}'
  )

  echo "$selected_namespace"
  # local selected_pod  = $(
  #   kubectl get pods -n $selected_namespace -o go-template \
  #     --template='{{ range .items }}{{ printf "%s\n" .metadata.name }}{{ end }}' | \
  #     fzf --no-multi --select-1 --exit-0
  # )
  # return
}

alias fkc='fzf_kube_connect'
