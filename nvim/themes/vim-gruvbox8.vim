colorscheme gruvbox8

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
" change color for highlight yank text
highlight HighlightedyankRegion guibg=#d79921 guifg=#282828

" custom for diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#282828 guibg=#98971a
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#282828 guibg=#cc241d
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#282828 guibg=#458588
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#282828 guibg=#458588

highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#282828 guifg=#98971a
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#282828 guifg=#cc211d
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#282828 guifg=#458588
