colorscheme nord

" Add Some italic style
highlight Comment gui=italic cterm=italic
highlight htmlArg gui=italic cterm=italic
highlight Folded gui=italic cterm=italic
highlight String gui=italic cterm=italic

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
" change color for highlight yank text
highlight HighlightedyankRegion guibg=#5E81AC guifg=#2E3440

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#2E3440 guibg=#A3BE8C
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#2E3440 guibg=#BF616A
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#2E3440 guibg=#EBCB8B
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#2E3440 guibg=#A3BE8C

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#2E3440 guifg=#A3BE8C
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#2E3440 guifg=#BF616A
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#2E3440 guifg=#EBCB8B

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#2E3440 guifg=#A3BE8C
" UserInsertMode
highlight UserInsertMode guibg=#3B4252 guifg=#88C0D0 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#3B4252 guifg=#BF616A gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#3B4252 guifg=#A3BE8C gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#3B4252 guifg=#A3BE8C gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#2E3440 guifg=#EBCB8B gui=italic
highlight UserModiNotModified guibg=#2E3440 guifg=#5c6370 gui=italic
highlight UserFilenameModified guibg=#2E3440 guifg=#EBCB8B gui=italic
highlight UserFilenameNotModified guibg=#2E3440 guifg=#5c6370 gui=italic

