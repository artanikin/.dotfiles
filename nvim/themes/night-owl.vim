colorscheme night-owl

highlight! link TabLine Pmenu
highlight! link TabLineSel PmenuSel
highlight! link TabLineFill Normal

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
" change color for highlight yank text
highlight HighlightedyankRegion guibg=#ecc48d guifg=#011627

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#011627 guibg=#addb67
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#011627 guibg=#ff5874
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#011627 guibg=#82aaff
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#011627 guibg=#82aaff

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#011627 guifg=#addb67
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#011627 guifg=#ff5874
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#011627 guifg=#82aaff

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#011627 guifg=#addb67
" UserInsertMode
highlight UserInsertMode guibg=#112630 guifg=#ecc48d gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#112630 guifg=#ff5874 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#112630 guifg=#82aaff gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#112630 guifg=#addb67 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#011627 guifg=#addb67 gui=italic
highlight UserModiNotModified guibg=#011627 guifg=#637777 gui=italic
highlight UserFilenameModified guibg=#011627 guifg=#ecc48d gui=italic
highlight UserFilenameNotModified guibg=#011627 guifg=#637777 gui=italic
