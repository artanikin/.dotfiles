if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme onehalfdark

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
highlight HighlightedyankRegion guibg=#56b6c2 guifg=#282c34

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#282c34 guibg=#98c379
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#282c34 guibg=#e06c75
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#282c34 guibg=#e5c07b
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#282c34 guibg=#98c379

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#282c34 guifg=#98c379
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#282c34 guifg=#e06c75
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#282c34 guifg=#e5c07b

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#282c34 guifg=#98c379
" UserInsertMode
highlight UserInsertMode guibg=#313640 guifg=#56b6c2 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#313640 guifg=#e06c75 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#313640 guifg=#98c379 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#313640 guifg=#98c379 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#282c34 guifg=#e5c07b gui=italic
highlight UserModiNotModified guibg=#282c34 guifg=#5c6370 gui=italic
highlight UserFilenameModified guibg=#282c34 guifg=#e5c07b gui=italic
highlight UserFilenameNotModified guibg=#282c34 guifg=#5c6370 gui=italic
