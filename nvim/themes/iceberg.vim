colorscheme iceberg

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine

" Highlight yank text
highlight UserTextYankPost guibg=#84a0c6 guifg=#1e2132

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#1e2132 guibg=#b4be86
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#1e2132 guibg=#e27878
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#1e2132 guibg=#e2a478
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#1e2132 guibg=#b4be86

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#b4be86
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#e27878
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#e2a478

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=NONE guifg=#b4be86
" UserInsertMode
highlight UserInsertMode guibg=NONE guifg=#84a0c6 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=NONE guifg=#e27878 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=NONE guifg=#b4be86 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=NONE guifg=#b4be86 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=NONE guifg=#e2a478
highlight UserModiNotModified guibg=NONE guifg=#d2d4de
highlight UserFilenameModified guibg=NONE guifg=#e2a478
highlight UserFilenameNotModified guibg=NONE guifg=#d2d4de
