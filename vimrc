set nocompatible

" load plugins
source ~/.vim/plugins.vim

" Abbreviations
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Qa qa
cnoreabbrev Ц w
cnoreabbrev Цй wq

" Config ------------------------------------------------------------------
syntax on
set shell=/bin/zsh
set encoding=utf-8
set ff=unix
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

" Default Whitespace ----------------
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" -----------------------------------

set linebreak
set dy=lastline

" For russian language ---------------
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
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Status Line -------------------------------------------------------------
set statusline=%f "tail of the filename
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
set laststatus=2
" -----------------------------------

" Experiment {{{
nmap <leader>l :set list!<CR>
set list
set listchars=tab:▸\ ,eol:¬,trail:˽
" set listchars=tab:▸\ ,eol:¬,trail:∙
set cpoptions+=$
" }}}


" Themes ------------------------------------------------------------------

set t_Co=256
" for mac ----------------
" set term=xterm-256color
" for linux --------------
set term=screen-256color
" let base16colorspace=256
" ------------------------


if has("gui_running")

  if has("gui_gtk2")
    set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Medium\ 10.5
  elseif has("gui_photon")
    set guifont=Courier\ New:s11
  elseif has("gui_kde")
    set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    " set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Nerd\ Font\ Complete\ Mono:h12
    set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Medium:h10
  endif

  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar

  set background=dark
  colorscheme base16_default
  let g:airline_theme = 'pencil' " bubblegum | murmur
  set lines=45 columns=200
else

  set background=dark
  colorscheme monokai
  let g:airline_theme = 'base16_monokai' " bubblegum | murmur
  let g:monokai_term_italic = 1
endif

let g:enable_bold_font = 1

" -------------------------------------------------------------------------

set tags=./tags;

" FILETYPES ---------------------------------------------------------------
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Guardfile,config.ru} set ft=ruby
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

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
" -------------------------------------------------------------------------

" Mapping -----------------------------------------------------------------
inoremap <C-f> <ESC>
imap jj <Esc>
let mapleader = ','
cmap w!! %!sudo tee > /dev/null %

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
let g:NERDTreeQuitOnOpen=0
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


" For repeat plugin
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Indent guide
set ts=2 sw=2 et
let g:indent_guides_start_level = 2

let g:vimwiki_list = [{'path':'~/GoogleDrive/Productivity/work/wiki', 'path_html':'~/GoogleDrive/Productivity/work/html'}]

" Gist
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_browser_command = 'google-chrome %URL%'

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>
" PLUGIN ZoomWin
nmap <leader>zw  :ZoomWin<CR>

" Auto toggle paste state in insert mode
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
