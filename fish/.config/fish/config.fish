# Remove welcome message
set -g fish_greeting

set VISUAL nvim
set EDITOR nvim
set PATH "$HOME/.sbm-cli/usr/bin:$PATH"
set SBM_OLD_PLAYGROUND force

# Go
set -g GOPATH $HOME/projects/go-workspace
set -gx PATH $GOPATH/bin $PATH

# source "$HOME/.sbm-cli/completion/zsh/sbm-cli"
source ~/.config/fish/aliases.fish

set -gx PATH "$HOME/.cargo/bin" $PATH

if status is-interactive
    set fish_key_bindings fish_user_key_bindings
    set fish_bind_mode insert
    # ...
end

function g
    if test (count $argv) -gt 0
        git $argv
    else
        git status
    end
end

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0v

# Prompt
set --universal tide_right_prompt_frame_enabled true
set --universal tide_right_prompt_items status cmd_duration context jobs direnv node python rustc java php pulumi ruby go gcloud distrobox toolbox terraform aws nix_shell crystal elixir kubectl
