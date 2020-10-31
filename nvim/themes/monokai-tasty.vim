let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
colorscheme vim-monokai-tasty

hi Search guifg=NONE guibg=#000000 gui=bold ctermfg=green ctermbg=black cterm=bold

" Add Some italic style
highlight Comment gui=italic cterm=italic
highlight htmlArg gui=italic cterm=italic
highlight Folded gui=italic cterm=italic
highlight String gui=italic cterm=italic

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine

" Highlight yank text
highlight UserTextYankPost guibg=#62D8F1 guifg=#262626

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#262626 guibg=#A4E400
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#262626 guibg=#FC1A70
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#262626 guibg=#FFFF87
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#262626 guibg=#A4E400

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#262626 guifg=#A4E400
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#262626 guifg=#FC1A70
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#262626 guifg=#FFFF87

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#262626 guifg=#A4E400
" UserInsertMode
highlight UserInsertMode guibg=#2b2b2b guifg=#62D8F1 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#2b2b2b guifg=#FC1A70 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#2b2b2b guifg=#A4E400 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#2b2b2b guifg=#A4E400 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#262626 guifg=#FFFF87 gui=italic
highlight UserModiNotModified guibg=#262626 guifg=#444444 gui=italic
highlight UserFilenameModified guibg=#262626 guifg=#FFFF87 gui=italic
highlight UserFilenameNotModified guibg=#262626 guifg=#444444 gui=italic

