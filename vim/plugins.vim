filetype off

call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' |  Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'Townk/vim-autoclose'
Plug 'Lokaltog/vim-easymotion'
Plug 'rbgrouleff/bclose.vim'
Plug 'ervandew/supertab'
" Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/ZoomWin'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'MarcWeber/vim-addon-mw-utils' |  Plug 'tomtom/tlib_vim' |  Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
Plug 'KabbAmine/zeavim.vim'
Plug 'tpope/vim-repeat'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'danro/rename.vim'
Plug 'tmux-plugins/vim-tmux'

" Languagespecific plugins
Plug 'vim-ruby/vim-ruby',{ 'for': 'ruby' }
Plug 'ap/vim-css-color', { 'for': ['css', 'sass', 'scss']  }
Plug 'tpope/vim-haml',   { 'for': 'haml' }
Plug 'mattn/emmet-vim',  { 'for': ['html', 'css', 'sass', 'scss', 'erb'] }
Plug 'slim-template/vim-slim', { 'for': 'slim' }

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'davidkariuki/sexy-railscasts-256-theme'
Plug 'xiaody/thornbird.vim'
Plug 'chriskempson/base16-vim'

call plug#end()
filetype plugin indent on
