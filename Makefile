.PHONY: help brew_install git_install zsh_install tmux_install nvim_install bin_install dev_install alacritty_install bat_install iterm2_install kitty_install pgcli_install vifm_install bootstrap

help:
	@echo 'Available targets:'
	@echo '    make brew_install'
	@echo '    make git_install'
	@echo '    make zsh_install'
	@echo '    make tmux_install'
	@echo '    make nvim_install'
	@echo '    make bin_install'
	@echo '    make dev_install'
	@echo '    make alacritty_install'
	@echo '    make bat_install'
	@echo '    make iterm2_install'
	@echo '    make kitty_install'
	@echo '    make pgcli_install'
	@echo '    make vifm_install'
	@echo '    make bootstrap 				Install all configs'


brew_install:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	cd ~/.dotfiles/brew/.config/brew
	brew bundle

git_install:
	cd ~/.dotfiles && stow -v git

zsh_install:
	cd ~/.dotfiles && stow -v zsh
	git clone https://github.com/zplug/zplug ~/.zplug

tmux_install:
	cd ~/.dotfiles && stow -v tmux
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

nvim_install:
	cd ~/.dotfiles && stow -v nvim

bin_install:
	cd ~/.dotfiles && stow -v bin

dev_install:
	cd ~/.dotfiles && stow -v dev

alacritty_install:
	cd ~/.dotfiles && stow -v alacritty

bat_install:
	cd ~/.dotfiles && stow -v bat

iterm2_install:
	cd ~/.dotfiles && stow -v iterm2

kitty_install:
	cd ~/.dotfiles && stow -v kitty

pgcli_install:
	cd ~/.dotfiles && stow -v pgcli

vifm_install:
	cd ~/.dotfiles && stow -v pgcli

bootstrap:
	make brew_install
	make git_install
	make zsh_install
	make tmux_install
	make nvim_install
	make bin_install
	make dev_install
	make alacritty_install
	make bat_install
	make iterm2_install
	make kitty_install
	make pgcli_install
	make vifm_install
