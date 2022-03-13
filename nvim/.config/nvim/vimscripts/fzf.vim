let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

" <C-o>       toggle preview
" <C-w>       toggle preview text wrap
" <C-d>|<C-u> half page down|up
" <C-l>       clear query
let $FZF_DEFAULT_OPTS = '--layout=reverse --preview-window="border:nowrap" --info=inline --multi --bind="ctrl-o:toggle-preview,ctrl-w:toggle-preview-wrap,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-f:page-down,ctrl-b:page-up,ctrl-a:toggle-all,ctrl-h:toggle,ctrl-l:clear-query"'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :GFiles?<CR>
nnoremap <silent> <Leader>fw :Rg<CR>
nnoremap <silent> <leader>fo :History<cr>
nnoremap <silent> <leader>fl :Lines<cr>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>fm :Marks<CR>
nnoremap <silent> <Leader>fc :Colors<CR>
nnoremap <silent> <Leader>fv :Files $HOME/.config/nvim<CR>
nnoremap <silent> <Leader>ft :Tags<CR>
nnoremap <silent> <Leader>fh :Helptags<CR>

nnoremap <silent> <leader>fM :Files app/models/<CR>
nnoremap <silent> <leader>fC :Files app/controllers/<CR>
nnoremap <silent> <leader>fV :Files app/views/<CR>
nnoremap <silent> <leader>fT :Files spec/<CR>
