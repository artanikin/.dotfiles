" Leader key
let mapleader=' '

" Enable syntax highlighting
syntax on
" Enable filetype detection
filetype on
" Enable filetype-specific indenting
filetype indent on
" Enable filetype-specific plugins
filetype plugin indent on
runtime macros/matchit.vim

" Count spaces for <Tab>
set tabstop=4
" Replace tab on spaces
set shiftwidth=2
set softtabstop=2
set expandtab
" Set Encoding
set encoding=utf-8
" Set UNIX fileformat
set fileformat=unix
" Show cursorline
set cursorline
" Show Entered command
set showcmd
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
" Minimal number of screen columns to keep the left and to the right of the cursor
set sidescrolloff=5
" Enable 24-bit RGB color in the TUI
set termguicolors
" Show signcolumns (auto, yes, no)
set signcolumn=yes
" Enable mouse control
set mouse=a
" Wrap long lines
set linebreak
" Copy into system buffer
set clipboard=unnamed,unnamedplus
" Hide buffers insted of closing them even if they contain unwritten changes
set hidden
" Enable linenumber
set number
" Enable relative linenumber
set relativenumber
" Highlight all search matches
set hlsearch
" Show matching pattern when typing
set incsearch
" Ignore case sensitive
set ignorecase
" Override ignorecase if search patter contains upper case chars.
set smartcase
" Makes popup menu smaller
set pumheight=10
" Treat dash separated words as a word text object
set iskeyword+=-
" Support 256 colors
set t_Co=256
" Makes tabbing smarter will realize you have 2 vs 4
set smarttab
" Makes indenting smart
set smartindent
" Good auto indent
set autoindent
" Always show tabs
set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode
" This is recommended by coc
set nobackup
" This is recommended by coc
set nowritebackup
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Faster completion
set updatetime=300
" By default timeoutlen is 1000 ms
set timeoutlen=300
" Time in milliseconds to wait for a key code sequence to complete
set ttimeoutlen=10
" Stop newline continution of comments
set formatoptions-=cro
" Give more space for displaying messages.
set cmdheight=2
" Display [1 of 3] search match
set shortmess-=S

" Maintain undo history between sessions
set undofile
set undodir=~/.config/nvim/undodir,/var/tmp,/tmp

" List of directories for the backup file
set backupdir=~/.config/nvim/backupdir,/var/tmp,/tmp
" List of directory names for the swap files
set directory=~/.config/nvim/swapdir,/var/tmp,/tmp

" Open new split panes to bottom
set splitbelow
" Open new split panes to right
set splitright

" Reload config when writing init.vim
au! BufWritePost $MYVIMRC source %

" Save as root
cmap w!! w !sudo tee %

" Remove trailing whitespace on save
autocmd! BufWritePre * :%s/\s\+$//e

" Add colorcolumn on Insert Mode
augroup ColorColumnOnlyInInsertMode
  autocmd!
  autocmd InsertEnter * let &colorcolumn="159,".join(range(159,999),",")
  autocmd BufRead,BufNewFile,InsertLeave * setlocal colorcolumn=0
augroup END

if exists('##TextYankPost')
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank('Substitute', 200)
endif

" Support RU locale in naviation
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
