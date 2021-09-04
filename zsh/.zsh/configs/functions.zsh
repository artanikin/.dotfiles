# Function to source files if they exist
function zsh_add_file() {
    [ -f "$LOCAL_ZDOTDIR/$1" ] && source "$LOCAL_ZDOTDIR/$1"
}

function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        # For plugins
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}

function zsh_add_completion() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        # For completions
		completion_file_path=$(ls $LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME/_*)
		fpath+="$(dirname "${completion_file_path}")"
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh"
    else
        git clone "https://github.com/$1.git" "$LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME"
		fpath+=$(ls $LOCAL_ZDOTDIR/plugins/$PLUGIN_NAME/_*)
        [ -f $LOCAL_ZDOTDIR/.zccompdump ] && $LOCAL_ZDOTDIR/.zccompdump
    fi
	completion_file="$(basename "${completion_file_path}")"
	if [ "$2" = true ] && compinit "${completion_file:1}"
}

function conflicted() {
  vim +Conflicted
}

# No arguments: `git status`
# With arguments: acts like `git`
function g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}
