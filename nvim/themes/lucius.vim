colorscheme lucius

highlight! link SignColumn LineNr
highlight! link ColorColumn CursorLine

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=NONE guibg=#87af00
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=NONE guibg=#d75f5f
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=NONE guibg=#005f87
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=NONE guibg=#005f87

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#444444 guifg=#87af00
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#444444 guifg=#d75f5f
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#444444 guifg=#ffffaf
