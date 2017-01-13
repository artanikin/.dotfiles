filetype off

call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' |  Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'Townk/vim-autoclose'
Plug 'Lokaltog/vim-easymotion'
Plug 'rbgrouleff/bclose.vim'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'MarcWeber/vim-addon-mw-utils' |  Plug 'tomtom/tlib_vim' |  Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-repeat'
Plug 'kchmck/vim-coffee-script'
Plug 'powerman/vim-plugin-ruscmd'

" Languagespecific plugins
Plug 'vim-ruby/vim-ruby' | Plug 'ngmy/vim-rubocop' | Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tpope/vim-haml',   { 'for': 'haml' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'mattn/emmet-vim',  { 'for': ['html', 'css', 'sass', 'scss', 'erb'] }

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'davidkariuki/sexy-railscasts-256-theme'
Plug 'xiaody/thornbird.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'rakr/vim-two-firewatch'
Plug 'joshdick/onedark.vim'
Plug 'crusoexia/vim-monokai'
Plug 'baskerville/bubblegum'
Plug 'sjl/badwolf'
Plug 'zeis/vim-kolor'
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'jacoborus/tender'
Plug 'gosukiwi/vim-atom-dark'
Plug 'albertorestifo/github.vim'

call plug#end()
filetype plugin indent on
