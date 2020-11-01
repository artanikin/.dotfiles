colorscheme TSnazzy

highlight! link SignColumn LineNr
highlight! link ColorColumn CursorLine

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=NONE guibg=#5AF78E
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=NONE guibg=#FF8380
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=NONE guibg=#57C7FF
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=NONE guibg=#57C7FF

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#5AF78E
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#FF8380
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#F3F99D
