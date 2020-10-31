" Swith between last two buffers
nnoremap <leader><leader> <C-^>

" Clear search highlight
nnoremap <space>h :nohl<CR>
" Copy to end of line
nnoremap Y y$
" Move UP to the wrapping line
nnoremap k gk
" Move DOWN to the wrapping line
nnoremap j gj

" Move visual selection UP
vnoremap K :m '<-2<CR>gv=gv
" Move visual selection DOWN
vnoremap J :m '>+1<CR>gv=gv

" Keep text selected after indentation
vnoremap < <gv
vnoremap > >gv
vnoremap . :normal.<cr>

" Horizontal Split
nnoremap ss :split<CR>
" Vertical Split
nnoremap sv :vsplit<CR>

" Horizontal split to vertical
map <leader>th <C-w>t<C-w>H
" Vertical split to horizontal
map <leader>tk <C-w>t<C-w>K

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Switch between panels
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Open next buffer
nnoremap <tab> :bnext<CR>
" Open prev buffer
nnoremap <S-tab> :bprevious<CR>
" Open first buffer
nnoremap <silent> [B :bfirst<CR>
" Open last buffer
nnoremap <silent> ]B :blast<CR>
" Close buffer
noremap  <leader>d :Bd<CR>
" Close all buffers
noremap  <leader>D :bufdo bd<CR>
" Close buffer without closing window
command! Bd :bp | :sp | :bn | :bd
" Command to copy the current file's full absolute path.
command! CopyFilePath let @+ = expand('%:p')

" Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" makes Ascii art font
nmap <leader>aF :.!toilet -w 200 -f 'ANSI Shadow'<CR>
nmap <leader>af :.!toilet -w 200 -f small<CR>
" makes Ascii border
nmap <leader>a1 :.!toilet -w 200 -f term -F border<CR>
