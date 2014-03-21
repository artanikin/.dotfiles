set nocompatible

" Vundle ------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'
Bundle "tomtom/tlib_vim"
Bundle 'kien/ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'skalnik/vim-vroom'
Bundle 'rbgrouleff/bclose.vim'
Bundle 'mattn/emmet-vim'
" Bundle 'Yggdroot/indentLine'
Bundle 'ervandew/supertab'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'vim-ruby/vim-ruby'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/ZoomWin'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
" Themes ----------------------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'nanotech/jellybeans.vim'
Bundle 'morhetz/gruvbox'
Bundle 'sjl/badwolf'
Bundle 'vim-scripts/candyVirus.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'w0ng/vim-github-theme'
filetype plugin indent on
" -------------------------------------------------------------------------

" Config ------------------------------------------------------------------
syntax on
set re=1
set shell=/bin/bash
set encoding=utf-8
set fileencoding=utf-8
set showcmd
set cursorline
set ruler
set showcmd
set mouse=a
set scrolloff=3
set pastetoggle=<F10>

" Gui {{{
set guifont=Monaco\ for\ Powerline\ 10
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" }}}

" Default Whitespace ----------------
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" -----------------------------------

set linebreak
set dy=lastline

" For russian language --------------
set keymap=russian-jcukenwin " переключение по Ctrl+^
set iminsert=0 " по умолчанию - латинская раскладка
set imsearch=0 " по умолчанию - латинская раскладка при поиске
set iskeyword=@,48-57,_,192-255 " настраиваю для работы с русскими словами (чтобы w, b, * понимали русские слова)
" -----------------------------------

" Searching and highlights ----------
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
" -----------------------------------

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Tab completion --------------------
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*,*.jpg,*.png,*.gif
" -----------------------------------

set backspace=indent,eol,start

" Directories for swp files ---------
set backupdir=~/.dotfiles/vim/vim_backups//
set directory=~/.dotfiles/vim/vim_backups//
set viewdir=~/.dotfiles/vim/vim_backups//
" -----------------------------------

" set undofile ----------------------
if &undodir =~# '^\.\%(,\|$\)'
  let &undodir = "~/.dotfiles/vim/undo/" . &undodir
endif
" -----------------------------------

" Status Line -------------------------------------------------------------
set statusline=%f "tail of the filename
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
set laststatus=2
" -----------------------------------

" Experiment {{{
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:∙
set nonumber
set relativenumber
set cpoptions+=$
" }}}


" Themes ------------------------------------------------------------------

set t_Co=256

if has("gui_running")
  set background=dark
  colorscheme codeschool
else
  set background=dark
  colorscheme hybrid
endif
"
" Gruvbox theme ----------------------
" let g:gruvbox_bold = 1
" let g:gruvbox_italic = 0
" let g:gruvbox_invert_selection = 0
" let g:gruvbox_contrast = 'medium'   "(soft|medium|hard)
" ------------------------------------
" -------------------------------------------------------------------------

" FILETYPES ---------------------------------------------------------------
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown
au BufNewFile,BufRead *.json set ft=javascript
" -------------------------------------------------------------------------

" autocommands ------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
augroup vimscript
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup ColorcolumnOnlyInInsertMode
  autocmd!
  autocmd InsertEnter * setlocal colorcolumn=81
  autocmd InsertLeave * setlocal colorcolumn=0
augroup END
" -------------------------------------------------------------------------

" Mapping -----------------------------------------------------------------
inoremap <C-f> <ESC>
imap jj <Esc>
let mapleader = ','
nnoremap n nzz
nnoremap N Nzz

" Buffers ----------------------------
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
noremap  <leader>d :Bclose<CR>
noremap  <leader>a :tabnew<CR>
noremap  <leader>A :tabc<CR>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap Y y$
" -----------------------------------

" Quicker window movement -----------
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" -------------------------------------------------------------------------

nnoremap n nzz
nnoremap N Nzz

" NerdTree ---------------------------
nmap <leader>q :NERDTreeToggle<cr>
" -------------------------------------------------------------------------

" ABBREVIATIONS -----------------------------------------------------------
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Qa qa
" -------------------------------------------------------------------------

" PLUGINS CONFIG ----------------------------------------------------------
" vim-airline ------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'lucius'
" ------------------------------------

" SuperTab ---------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"
" ------------------------------------

" ctrlp config -----------------------
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0

" Tcomment ---------------------------
map <leader>c <C-_><C-_>

" Tagbar -----------------------------
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_width     = 40
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact   = 1

" Vroom ------------------------------
let g:vroom_spec_command="rspec --format documentation"

" IndentLine -------------------------
" let g:indentLine_color_term = 236   " for dark themes
" let g:indentLine_color_term = 251 " for light themes
" let g:indentLine_char = '⋮'
" let g:indentLine_char = '┆'
" let g:indentLine_char = '¦'
" -------------------------------------------------------------------------
