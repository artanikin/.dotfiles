" Work with arglist
" https://ctoomey.com/writing/using-vims-arglist-as-a-todo-list/
function! s:ThankYouNext() abort
  update
  argdelete %
  bdelete
  if !empty(argv())
    argument
  endif
endfunction

command! ThankYouNext call <sid>ThankYouNext()

" Command to copy the current file's full absolute path.
" command! CopyFilePath let @+ = expand('%:p')
command! CopyFilePath let @+ = @%
