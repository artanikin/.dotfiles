set nocompatible

" Vundle ------------------------------------------------------------------
filetype off
set rtp+=/Users/artyom/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'Townk/vim-autoclose'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'skalnik/vim-vroom'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/ZoomWin'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-expand-region'

" Themes ----------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'
Plugin 'w0ng/vim-github-theme'
Plugin 'reedes/vim-colors-pencil'
Plugin 'john2x/flatui.vim'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'davidkariuki/sexy-railscasts-256-theme'

call vundle#end()
filetype plugin indent on
" -------------------------------------------------------------------------

" Config ------------------------------------------------------------------
syntax on
set shell=/bin/zsh
set encoding=utf-8
set fileencoding=utf-8
set showcmd
set cursorline
set ruler
set showcmd
set mouse=a
set scrolloff=3
set pastetoggle=<F10>
set number

" Gui {{{
set guifont=Monaco\ for\ Powerline:h12
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
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
set cpoptions+=$
" }}}


" Themes ------------------------------------------------------------------

set t_Co=256

if has("gui_running")
  set background=dark
  colorscheme jellybeans
  let g:airline_theme = 'jellybeans' " bubblegum | murmur
else
" Gruvbox theme ----------------------
  let g:gruvbox_bold = 1
  let g:gruvbox_italic = 0
  let g:gruvbox_invert_selection = 0
  let g:gruvbox_contrast = 'hard'   "(soft|medium|hard)
" ------------------------------------
  set background=dark
  colorscheme jellybeans
  let g:airline_theme = 'jellybeans' " bubblegum | murmur
endif


"
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

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
" -------------------------------------------------------------------------

" Mapping -----------------------------------------------------------------
inoremap <C-f> <ESC>
imap jj <Esc>
let mapleader = ','

nnoremap <leader>w :w<cr>

" move vertically by visual line
nnoremap j gj
nnoremap k gk
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

" CtrlP {{{
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|DS_Store)$'
let g:ctrlp_match_window = 'bottom,order:ttd'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}

" vim-airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" }}}

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
