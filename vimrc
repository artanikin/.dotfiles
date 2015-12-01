set nocompatible

" Vundle ------------------------------------------------------------------
filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'
Plug 'Lokaltog/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skalnik/vim-vroom'
Plug 'rbgrouleff/bclose.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'vim-ruby/vim-ruby'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/ZoomWin'
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'rking/ag.vim'
Plug 'terryma/vim-expand-region'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
" Snippets start ----------
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" Snippets end ------------
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'benmills/vimux'
Plug 'terryma/vim-multiple-cursors'

" Themes ----------------------------
Plug 'altercation/vim-colors-solarized'
Plug 'jpo/vim-railscasts-theme'
Plug 'jonathanfilip/vim-lucius'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'w0ng/vim-github-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'john2x/flatui.vim'
Plug 'noahfrederick/vim-hemisu'
Plug 'davidkariuki/sexy-railscasts-256-theme'
Plug 'andrwb/vim-lapis256'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jdkanani/vim-material-theme'
Plug 'Wutzara/vim-materialtheme'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'jscappini/material.vim'
Plug 'xiaody/thornbird.vim'
Plug 'woju/vim-colors-woju'
Plug 'chriskempson/base16-vim'

" call vundle#end()

call plug#end()
filetype plugin indent on
" -------------------------------------------------------------------------

" Config ------------------------------------------------------------------
syntax on
set shell=/bin/zsh
set encoding=utf-8
" set fileencoding=utf-8
set showcmd
set cursorline
set ruler
set showcmd
set mouse=a
set scrolloff=3
set pastetoggle=<F10>
set number
set linespace=2

" Gui {{{
" set guifont=Monaco\ For\ Powerline:h12
" set guifont=DejaVu\ Sans\ Mono\ For\ Powerline:h12
if has("gui_running")
  if has("gui_gtk2")
    " set guifont=Courier\ New\ 11
    " set guifont=DejaVu\ Sans\ Mono\ For\ Powerline\ 9
    set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Medium\ 9
  elseif has("gui_photon")
    set guifont=Courier\ New:s11
  elseif has("gui_kde")
    set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Courier_New:h11:cDEFAULT
  endif
endif
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
set backupdir=~/.dotfiles/vim/vim_backups/
set directory=~/.dotfiles/vim/vim_backups/
set viewdir=~/.dotfiles/vim/vim_backups/
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
" set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:∙
set listchars=tab:▸\ ,eol:¬ ",nbsp:,trail:∙
set cpoptions+=$
" }}}


" Themes ------------------------------------------------------------------

set t_Co=256

if has("gui_running")
  set background=dark
  colorscheme thornbird
  let g:airline_theme = 'molokai' " bubblegum | murmur
  let g:enable_bold_font = 1
  set lines=45 columns=200
else
" Gruvbox theme ----------------------
  " let g:gruvbox_bold = 1
  " let g:gruvbox_italic = 0
  " let g:gruvbox_invert_selection = 0
  " let g:gruvbox_contrast = 'hard'   "(soft|medium|hard)
" ------------------------------------
  set background=dark
  colorscheme solarized
  let g:airline_theme = 'solarized' " bubblegum | murmur
  let g:enable_bold_font = 1
endif

" -------------------------------------------------------------------------

set tags=./tags;

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
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=0
" Toggle NERDTree
nmap <silent> <leader>q :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>
" -------------------------------------------------------------------------

map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

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

" Webdevicons ------------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 0

" Nerdtree-git-plugin ----------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ "Unknown"   : "? "
    \ }

" IndentLine -------------------------
" let g:indentLine_color_term = 236   " for dark themes
" let g:indentLine_color_term = 251 " for light themes
" let g:indentLine_char = '⋮'
" let g:indentLine_char = '┆'
" let g:indentLine_char = '¦'
" -------------------------------------------------------------------------
