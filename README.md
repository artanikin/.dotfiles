# Dotfiles

![dotfiles](https://github.com/artanikin/.dotfiles/blob/master/docs/screenshots/desk.png)

This repository is managed by [GNU stow](https://www.gnu.org/software/stow/).

**Table of Contents**

- [Brew Packages](#brew-packages)
- [Git](#git)
- [Zsh](#zsh)
- [Tmux](#tmux)
- [NeoVim](#neovim)
- [Scripts](#scripts)
- [Developer configs](#developer-configs)

## Installation

Clone repo to `~/.dotfiles` holder:

### Brew Packages

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd ~/.dotfiles/brew/.config/brew
brew bundle
```

### Git

```bash
cd ~/.dotfiles
stow -v git
```

### Zsh

Link to config files

```bash
cd ~/.dotfiles
stow -v zsh
```

Install [Zplug](https://github.com/zplug/zplug)

```bash
git clone https://github.com/zplug/zplug ~/.zplug
```

### Tmux

Link to config file

```bash
cd ~/.dotfiles
stow -v tmux
```

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Open Tmux sessions and press `Ctrl+I` for install plugins

### Neovim

```bash
cd ~/.dotfiles
stow -v nvim
```

### Scripts

```bash
cd ~/.dotfiles
stow -v bin
```

### Developer configs

```bash
cd ~/.dotfiles
stow -v dev
```
