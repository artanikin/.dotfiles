colorscheme apprentice

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#1C1C1C guifg=#5F875F
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#1C1C1C guifg=#AF5F5F
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#1C1C1C guifg=#87875F

highlight Comment gui=italic
highlight String gui=italic

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#262626 guifg=#5F875F
" UserInsertMode
highlight UserInsertMode guibg=#1C1C1C guifg=#5F87AF gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#1C1C1C guifg=#AF5F5F gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#1C1C1C guifg=#5F875F gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#1C1C1C guifg=#5F875F gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#262626 guifg=#87875F gui=italic
highlight UserModiNotModified guibg=#262626 guifg=#5c6370 gui=italic
highlight UserFilenameModified guibg=#262626 guifg=#87875F gui=italic
highlight UserFilenameNotModified guibg=#262626 guifg=#5c6370 gui=italic
