colorscheme nvcode

highlight! link SignColumn LineNr
highlight! link ColorColumn CursorLine

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=NONE guibg=#6A9955
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=NONE guibg=#D16969
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=NONE guibg=#569CD6
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=NONE guibg=#569CD6

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#6A9955
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#D16969
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#D7BA7D
