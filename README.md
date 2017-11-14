# Dotfiles

This repo is a collection of my customizations for zsh, vim and git.

## Installation

Clone repo to `~/.dotfiles` holder:

```console
$ cd ~
$ git clone https://github.com/arty88/dotfiles.git ~/.dotfiles
```

### Git

```console
$ ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
$ ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
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

### Console

Terminal:
* [iTerm2](https://www.iterm2.com/)
* Theme [railscasts](https://github.com/arty88/.dotfiles/blob/master/os/iterm2/railscasts.itermcolors)
* Font [Menlo Regular](https://github.com/arty88/.dotfiles/blob/master/os/fonts/Menlo-Regular.ttf) 15px

![dotfiles](https://github.com/arty88/.dotfiles/blob/master/screenshots/console.png)

### Vim

Theme [sexy-railscasts-256](https://github.com/arty88/sexy-railscasts-256-theme)

![dotfiles](https://github.com/arty88/.dotfiles/blob/master/screenshots/vim.png)
