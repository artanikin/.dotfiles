" RESIZE MODE {{{
    let g:resize_active=0
    function! ToggleResizeMode()
      if g:resize_active == 0
        let g:resize_active = 1
        " ESC should exit
        nnoremap <esc> :call ToggleResizeMode()<CR>
        " Switch to resize keys
        nnoremap h <C-w><
        nnoremap j <C-w>-2
        nnoremap k <C-w>+2
        nnoremap l <C-w>>
        nnoremap = <C-w>=
        nnoremap _ <C-w>_
        nnoremap + <C-w><bar>
        echom 'Resize Mode'
      else
        let g:resize_active = 0
        " Switch back to 'normal' keys
        nnoremap <esc> <esc>
        nnoremap h h
        nnoremap k gk
        nnoremap j gj
        nnoremap l l
        nnoremap = =
        nnoremap _ _
        nnoremap + +
        echom ''
      endif
    endfunction
    nnoremap <silent> <Leader>r :call ToggleResizeMode()<CR>
  " }}}
