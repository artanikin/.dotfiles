# No arguments: `git status`
# With arguments: acts like `git`
function g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}

# Source https://thoughtbot.com/blog/powerful-git-macros-for-automating-everyday-workflows
# git branch changes
gbc() {
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $@..$(git rev-parse --abbrev-ref HEAD)
}

# git base branch changes
gbbc() {
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $(git rev-parse --abbrev-ref HEAD)..$@
}

# rebasing a branch
gqrb() {
    git set-upstream
    git fetch origin "$@:$@" && git pull && git rebase "$@"
}

function docker-start() {
  if ! $(docker info > /dev/null 2>&1); then
    echo "Opening Docker for Mac..."
    open -a /Applications/Docker.app
    while ! docker system info > /dev/null 2>&1; do sleep 1; done
    echo "Docker is ready to rock!"
  else
    echo "Docker is up and running."
  fi
}

function emojy() {
  emojis=$(curl -sSL 'https://git.io/JXXO7')
  selected_emoji=$(echo $emojis | fzf)
  echo $selected_emoji | awk '{print $1}'
}
