colorscheme darcula

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#2b2b2b guibg=#5e8759
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#2b2b2b guibg=#8c0909
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#2b2b2b guibg=#7ca8c6
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#2b2b2b guibg=#7ca8c6

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#323232 guifg=#5e8759
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#323232 guifg=#8c0909
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#323232 guifg=#7ca8c6

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#2b2b2b guifg=#5e8759
" UserInsertMode
highlight UserInsertMode guibg=#323232 guifg=#c57825 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#323232 guifg=#8c0909 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#323232 guifg=#7ca8c6 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#323232 guifg=#5e8759 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#2b2b2b guifg=#5e8759 gui=italic
highlight UserModiNotModified guibg=#2b2b2b guifg=#5f5a60 gui=italic
highlight UserFilenameModified guibg=#2b2b2b guifg=#c57825 gui=italic
highlight UserFilenameNotModified guibg=#2b2b2b guifg=#5f5a60 gui=italic
