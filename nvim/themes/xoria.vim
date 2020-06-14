colorscheme xoria256

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine

" " Diff
" highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#282828 guibg=#afdf5f
" highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#282828 guibg=#cc241d
" highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#282828 guibg=#458588
" highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#282828 guibg=#458588

" Diff Gutter
" highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#282828 guifg=#afdf5f
" highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#282828 guifg=#cc211d
" highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#282828 guifg=#458588

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=NONE guifg=#afdf5f
" UserInsertMode
highlight UserInsertMode guibg=#35312F guifg=#ffffaf gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#35312F guifg=#df5f87 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#35312F guifg=#afdfff gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#35312F guifg=#afdf5f gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=NONE guifg=#afdf5f gui=italic
highlight UserModiNotModified guibg=NONE guifg=#4e4e4e gui=italic
highlight UserFilenameModified guibg=NONE guifg=#ffffaf gui=italic
highlight UserFilenameNotModified guibg=NONE guifg=#4e4e4e gui=italic
