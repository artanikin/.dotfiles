colorscheme synthwave84

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
highlight UserTextYankPost guibg=#495495 guifg=#262335

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#262335 guibg=#90DEB6
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#262335 guibg=#EB8F82
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#262335 guibg=#FEDE5D
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#262335 guibg=#90DEB6

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#262335 guifg=#90DEB6
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#262335 guifg=#EB8F82
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#262335 guifg=#FEDE5D

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#262335 guifg=#90DEB6
" UserInsertMode
highlight UserInsertMode guibg=#2C2540 guifg=#88C0D0 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#2C2540 guifg=#EB8F82 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#2C2540 guifg=#90DEB6 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#2C2540 guifg=#90DEB6 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#262335 guifg=#FEDE5D gui=italic
highlight UserModiNotModified guibg=#262335 guifg=#888690 gui=italic
highlight UserFilenameModified guibg=#262335 guifg=#FEDE5D gui=italic
highlight UserFilenameNotModified guibg=#262335 guifg=#888690 gui=italic

