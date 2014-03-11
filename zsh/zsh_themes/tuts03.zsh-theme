setopt PROMPT_SUBST

function git_status() {
  local st="$(git status 2> /dev/null)"
  local ret=""
  local color="green"

  if [[ $st == *Untracked* ]] then
    ret="${ret} \u267B"
    color="magenta"
  fi

  if [[ $st == *"not staged for commit"* ]] then
    ret="${ret} \u26A1"
    color="red"
  fi

  if [[ $st == *"to be committed"* ]] then
    ret="${ret} \u2757"
    color="yellow"
  fi

  if [[ $st == *clean* ]] then
    ret="${ret} \u2713"
    color="green"
  fi

  echo "%{$fg[$color]%}$ret%{$reset_color%}"
}

function git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function total_tasks() {
  num=`todo.sh ls 2>/dev/null | wc -l `
  let todos=num-2
  if [ $num > 0 ]
  then
    echo "\u2713 $todos"
  else
    echo ""
  fi
}

function show_tasks() {
  todo.sh list 2>/dev/null
}

RPROMPT='%~%{$fg[yellow]%}$(git_branch)%{$reset_color%}$(git_status)'
PROMPT="%{$fg[green]%} › %{$reset_color%}" 
