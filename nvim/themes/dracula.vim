colorscheme dracula

highlight! link SignColumn LineNr
highlight! link ColorColumn CursorLine

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=NONE guibg=#50fa7b
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=NONE guibg=#ff79c6
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=NONE guibg=#bd93f9
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=NONE guibg=#bd93f9

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#50fa7b
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#ff79c6
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#f1fa8c
