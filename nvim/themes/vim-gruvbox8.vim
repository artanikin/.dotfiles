colorscheme gruvbox8

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine

" Highlight yank text
highlight UserTextYankPost guibg=#d79921 guifg=#282828

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#282828 guibg=#98971a
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#282828 guibg=#cc241d
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#282828 guibg=#458588
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#282828 guibg=#458588

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#282828 guifg=#98971a
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#282828 guifg=#cc211d
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#282828 guifg=#458588

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#282828 guifg=#98971a
" UserInsertMode
highlight UserInsertMode guibg=#35312F guifg=#d79921 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#35312F guifg=#cc211d gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#35312F guifg=#458588 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#35312F guifg=#98971a gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#282828 guifg=#98971a gui=italic
highlight UserModiNotModified guibg=#282828 guifg=#928374 gui=italic
highlight UserFilenameModified guibg=#282828 guifg=#d79929 gui=italic
highlight UserFilenameNotModified guibg=#282828 guifg=#928374 gui=italic
