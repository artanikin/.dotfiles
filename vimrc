set nocompatible

" load plugins
source ~/.vim/plugins.vim

" Colors {{{
syntax enable

if has("gui_running")
  set background=dark
  color codeschool
  let g:airline_theme='tomorrow'
else
  set t_Co=256
  " set term=xterm-256color
  set term=screen-256color

  set background=dark
  colorscheme Tomorrow
  let g:airline_theme = 'tomorrow'
endif
" }}}
" GUI configurations {{{
if has("gui_running")

  set linespace=5
  if has("gui_gtk2")
    set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Medium\ 13
  elseif has("gui_photon")
    set guifont=Fura\ Mono\ Medium\ For\ Powerline\ Medium:s11
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
  set lines=45 columns=200
endif
" }}}
" Config {{{
set shell=/bin/zsh
set encoding=utf-8
set ff=unix
set showcmd
set modelines=1                             " tell vim check final line of the file for a modeline
set ruler
set showcmd
set mouse=a
set scrolloff=3
set pastetoggle=<F10>
set number
set relativenumber
set linespace=2
set linebreak
set dy=lastline
set backspace=indent,eol,start
set splitbelow                              " Open new split panes to bottom
set splitright                              " Open new split panes to right
set cursorline
set autowrite                               " Autosave closed buffers
hi CursorLine term=bold cterm=bold          " remove cursor underline
" }}}
" Spaces & Tabs {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" }}}
" UI Layout {{{
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*,*.jpg,*.png,*.gif
set statusline=%f "tail of the filename
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
set laststatus=2
" }}}
" Searching & Highlights {{{
set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
nnoremap n nzz
nnoremap N Nzz
" }}}
" Folding {{{
nnoremap ,<Space> za¬
vnoremap ,<Space> za¬
" }}}
" Line Shortcuts {{{
inoremap <C-f> <ESC>
imap jj <Esc>
cmap w!! %!sudo tee > /dev/null %

nnoremap Y y$

nmap F1 help
nmap <F1> <nop>
imap <F1> <nop>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" switch between panels
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" }}}
" Leader Shortcuts {{{
let mapleader = ','
nnoremap <leader>w :w<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
" }}}
" Tags {{{
set tags+=.git/tags
map <leader>ct :!ctags --tag-relative --extra=+f -Rf.git/tags --exclude=.git,pkg --languages=-javascript,sql<CR><CR>
" }}}
" Lists characters {{{
set nolist
set listchars=tab:▸\ ,eol:¬,trail:∙
set cpoptions+=$
" }}}
" AutoGroups {{{
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Guardfile,config.ru} set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown
au BufNewFile,BufRead *.json set ft=javascript

" autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
augroup VimScript
  autocmd!
  autocmd BufWritePost $MYVIMRC,plugins.vim source $MYVIMRC | AirlineRefresh
augroup END

augroup ColorColumnOnlyInInsertMode
  autocmd!
  autocmd InsertEnter * setlocal colorcolumn=101
  autocmd InsertLeave * setlocal colorcolumn=0
augroup END

augroup ConfigGroup
    autocmd!
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufWritePost *.rb :call StripTrailingWhitespaces()
augroup END
" }}}
" Backups {{{
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" }}}
" Buffers {{{
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
noremap  <leader>d :Bclose<CR>
map <leader>p :bprevious<CR>
map <leader>n :bnext<CR>
" }}}
" Abbreviations {{{
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Qa qa
cnoreabbrev Ц w
cnoreabbrev Цй wq
" }}}
" Russian language {{{
set keymap=russian-jcukenwin " переключение по Ctrl+^
set iminsert=0 " по умолчанию - латинская раскладка
set imsearch=0 " по умолчанию - латинская раскладка при поиске
set iskeyword=@,48-57,_,192-255 " настраиваю для работы с русскими словами (чтобы w, b, * понимали русские слова)
" }}}
" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" }}}
" CtrlP {{{
set wildignore+=*/tmp/*,*/vendor/*,*.so,*.swp,*.zip
nmap <c-T> :CtrlPBufTag<cr>
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_match_window = 'bottom,order:ttd'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" }}}
" Silver Searcher {{{
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
  nnoremap \ :Ag<space>
endif
" }}}
" NERDTree & Webdevicons {{{
let g:NERDTreeQuitOnOpen=0                             " close after a file is opened
let NERDTreeShowHidden=0                               " show hidden files in NERDTree
let g:NERDTreeWinSize=45

nmap <silent> <leader>q :NERDTreeToggle<cr>            " toggle NERDTree
nmap <silent> <leader>y :NERDTreeFind<cr>              " expand to the path of the file in the current buffer

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
    \ }                                              " NERDTree git-plugin

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
" }}}
" Robocop {{{
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
" }}}
" Rspec {{{
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch spring rspec {spec}"
" let g:vroom_spec_command="rspec --format documentation"     " Vroom
" }}}
" Tcomment {{{
map <leader>c <C-_><C-_>
" }}}
" Vim-maximizer {{{
map <F2> :Copen<CR>
map ,c :ccl<CR>
" }}}
" Functions {{{
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! StripTrailingWhitespaces()
  " save last search & cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    set nonumber
    set norelativenumber
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    set nonumber
    set relativenumber
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>
" }}}

" vim:foldmethod=marker:foldlevel=0
