# Dotfiles

This repo is a collection of my customizations for zsh, vim and git.

## Installation

* clone repo to `~/.dotfiles` holder:

```
cd ~
git clone https://github.com/arty88/dotfiles.git ~/.dotfiles
```

### Git
```
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
```

### Zsh
Install oh-my-zsh
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
* for mac
```
ln -s ~/.doftiles/zsh/zshrc_mac ~/.zshrc
cp ~/.doftiles/zsh/zsh_themes/tuts01.zsh-theme ~/.oh-my-zsh/themes/
```
* for linux
```
ln -s ~/.doftiles/zsh/zshrc_linux ~/.zshrc
cp ~/.doftiles/zsh/zsh_themes/tuts02.zsh-theme ~/.oh-my-zsh/themes/
```

### Tmux

```
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
```
Install Tmux Plugin Manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Install requirenments to system clipboard (tmux-yank plugin)
For MacOS
```
brew install reattach-to-user-namespace
```
Open Tmux sessions and press `Ctrl+I` for install plugins

### Vim
```
ln -s ~/.doftiles/vim ~/.vim
ln -s ~/.doftiles/vim/vimrc ~/.vimrc
ln -s ~/.doftiles/vim/gvimrc ~/.gvimrc
```
* install Plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* install plugins: open vim and fire command `:PlugInstall`

### Install ruby environment for Mac OSx
http://www.mgrachev.com/2014/11/17/configuring-rails-environment-on-yosemite/
