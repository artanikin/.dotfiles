set background=dark
colorscheme dogrun

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
highlight UserTextYankPost guibg=#929be5 guifg=#222433

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#222433 guibg=#7cbe8c
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#222433 guibg=#f56574
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#222433 guibg=#b5ae7d
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#222433 guibg=#7cbe8c

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#222433 guifg=#7cbe8c
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#222433 guifg=#f56574
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#222433 guifg=#b5ae7d

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#222433 guifg=#7cbe8c
" UserInsertMode
highlight UserInsertMode guibg=#2a2c3f guifg=#929be5 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#2a2c3f guifg=#f56574 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#2a2c3f guifg=#7cbe8c gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#2a2c3f guifg=#7cbe8c gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#222433 guifg=#b5ae7d gui=italic
highlight UserModiNotModified guibg=#222433 guifg=#9ea3c0 gui=italic
highlight UserFilenameModified guibg=#222433 guifg=#b5ae7d gui=italic
highlight UserFilenameNotModified guibg=#222433 guifg=#9ea3c0 gui=italic
