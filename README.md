# Dotfiles

This repo is a collection of my customizations for zsh, vim and git. 

## Installation

* clone repo to `~/.dotfiles` holder:

```
cd ~
git clone https://github.com/arty88/dotfiles.git ~/.dotfiles
```

* create symbolic links to config files

```
ln -s ~/.doftiles/vimrc ~/.vimrc
ln -s ~/.doftiles/zsh/zshrc_linux ~/.zshrc
ln -s ~/.doftiles/vim .vim
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
```

* install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

* install plugins: open vim and fire command `:BundleInstall`

* compile Command-T: make sure that default version of ruby is 1.8.7-p299 with command `ruby -v`, then go to `cd ~/.vim/bundle/Command-T/ruby/command-t` and run commands:

```
ruby extconf.rb
make
```
