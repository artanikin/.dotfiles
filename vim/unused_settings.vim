" ============================================================================================================
" This file contains settings for the Vim editor,
" which are not currently used, but may be needed later
" ============================================================================================================

Plug 'tpope/vim-sensible'

" NERDTree
Plug 'scrooloose/nerdtree' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
let NERDTreeShowBookmarks=0
let NERDTreeWinPos="left"
let NERDTreeHijackNetrw=1
let NERDTreeChDirMode=2
let NERDTreeDirArrows=1
let g:NERDTreeQuitOnOpen=1                             " close after a file is opened
let NERDTreeShowHidden=0                               " show hidden files in NERDTree
let g:NERDTreeWinSize=50
let NERDTreeAutoDeleteBuffer=1                         " delete buffer when rename or delete file

nmap <silent> <leader>q :NERDTreeToggle<cr>            " toggle NERDTree
nmap <silent> <leader>y :NERDTreeFind<cr>              " expand to the path of the file in the current buffer

" NERDTree syntax highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_mode='a'                              " Enabled in all modes (i,n,v,a)

