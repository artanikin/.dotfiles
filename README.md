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
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
```

### Zsh
Install oh-my-zsh
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
* for linux
```
ln -s ~/.doftiles/zsh/zshrc_linux ~/.zshrc
cp ~/.doftiles/zsh/zsh_themes/tuts05.zsh-theme ~/.oh-my-zsh/themes/
```
* for mac
```
ln -s ~/.doftiles/zsh/zshrc_mac ~/.zshrc
cp ~/.doftiles/zsh/zsh_themes/tuts03.zsh-theme ~/.oh-my-zsh/themes/
```

### Tmux

```
git submodule init
git submodule update
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
cp ~/.dotfiles/tmux/mytheme.sh ~/.dotfile/tmux/tmux-powerline/themes/ 
```
Update `~/.dotfiles/tmux/tmux-powerline/config/defaults.sh` by
```
export TMUX_POWERLINE_DEBUG_MODE_ENABLED_DEFAULT="false"
export TMUX_POWERLINE_PATCHED_FONT_IN_USE_DEFAULT="false"
export TMUX_POWERLINE_THEME_DEFAULT="mytheme"
```

### Vim
```
ln -s ~/.doftiles/vim .vim
ln -s ~/.doftiles/vim/vimrc ~/.vimrc
```
* install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

* install plugins: open vim and fire command `:BundleInstall`
