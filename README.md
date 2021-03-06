# Dotfiles

This repo is a collection of my customizations for zsh, vim and git.

**Table of Contents**

- [Brew Packages](#brew-packages)
- [Git](#git)
- [Zsh](#zsh)
- [Tmux](#tmux)
- [Vim](#vim)
- [NeoVim](#neovim)
- [Custom command](#custom-command)
- [Screenshots](#screenshots)
  + [Console](#console-screenshot)
  + [Vim](#vim-screenshot)

## Installation

### Brew Packages

```console
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ cd ~/.dotfiles
$ brew bundle
```

Clone repo to `~/.dotfiles` holder:

```console
$ cd ~
$ git clone https://github.com/artanikin/dotfiles.git ~/.dotfiles
```

Update submodules
```console
$ cd ~/.dotfiles
$ git submodule update
```

### Git

```console
$ ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
$ ln -s ~/.dotfiles/git/git_template ~/.git_template
```

### Zsh

Link to config files

```console
$ ln -s ~/.doftiles/.zsh ~/.zsh
$ ln -s ~/.doftiles/zsh/zshrc ~/.zshrc
$ ln -s ~/.doftiles/zsh/zshenv ~/.zshenv
```

Install [Zplug](https://github.com/zplug/zplug)

```console
$ mkdir ~/.zplug
$ git clone https://github.com/zplug/zplug ~/.zplug
```

### Tmux

Link to config file

```console
$ ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

```console
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install requirenments to system clipboard (tmux-yank plugin) for MacOS

```console
$ brew install reattach-to-user-namespace
```

Open Tmux sessions and press `Ctrl+I` for install plugins


### Vim

```console
$ ln -s ~/.doftiles/vim ~/.vim
$ ln -s ~/.doftiles/vim/vimrc ~/.vimrc
$ ln -s ~/.doftiles/vim/gvimrc ~/.gvimrc
```
* install Plug

```console
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* install plugins

```console
$ vim +PlugInstall
```


### NeoVim

NeoVim configuration depends on Vim configuration. Before, add links for vim config.

```console
$ ln -s ~/.dotfiles/vim/nvim ~/.config/nvim
```

For check all requirenments for neovim

```console
$ nvim +CheckHealth
```

### Custom command

```console
$ ln -s ~/.dotfiles/bin ~/bin
```

## Screenshots

### Vim Screenshot

![dotfiles](https://github.com/artanikin/.dotfiles/blob/master/docs/screenshots/vim_updated.png)
