colorscheme vwilight

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
" change color for highlight yank text
highlight HighlightedyankRegion guibg=#dad085 guifg=#1f1f1f

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#1f1f1f guibg=#8f9d6a
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#1f1f1f guibg=#cf6a4c
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#1f1f1f guibg=#7587a6
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#1f1f1f guibg=#7587a6

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#1f1f1f guifg=#8f9d6a
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#1f1f1f guifg=#cf6a4c
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#1f1f1f guifg=#7587a6

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#1f1f1f guifg=#8f9d6a
" UserInsertMode
highlight UserInsertMode guibg=#35312F guifg=#9b703f gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#35312F guifg=#cf6a4c gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#35312F guifg=#7587a6 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#35312F guifg=#8f9d6a gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#1f1f1f guifg=#8f9d6a gui=italic
highlight UserModiNotModified guibg=#1f1f1f guifg=#5f5a60 gui=italic
highlight UserFilenameModified guibg=#1f1f1f guifg=#9b703f gui=italic
highlight UserFilenameNotModified guibg=#1f1f1f guifg=#5f5a60 gui=italic
