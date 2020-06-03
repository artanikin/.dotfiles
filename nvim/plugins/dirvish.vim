nnoremap <leader>e :Dirvish<cr>
nnoremap <leader>y :Dirvish %<cr>

" sort directories before files, alphabetical
let g:dirvish_mode = ':sort /^.*[\/]/'  " from dirvish faq
augroup DirvishEvents
  autocmd!
  " Map `gh` to hide dotfiles.
  " To "toggle" this, just press `R` to reload.
  autocmd FileType dirvish nnoremap <silent><buffer> gh :silent :keeppatterns g@\v/\.[^\/]+/?$@d<cr>
augroup END
