augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

colorscheme xcodedark

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
" change color for highlight yank text
highlight HighlightedyankRegion guibg=#ffa14f guifg=#292a30

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#292a30 guibg=#d9c97c
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#292a30 guibg=#ff8170
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#292a30 guibg=#78c2b3
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#292a30 guibg=#78c2b3

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#292a30 guifg=#d9c97c
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#292a30 guifg=#ff8170
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#292a30 guifg=#78c2b3

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#292a30 guifg=#78c2b3
" UserInsertMode
highlight UserInsertMode guibg=#393b44 guifg=#ffa14f gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#393b44 guifg=#ff7ab2 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#393b44 guifg=#78c2b3 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#393b44 guifg=#78c2b3 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#292a30 guifg=#d9c97c gui=italic
highlight UserModiNotModified guibg=#292a30 guifg=#7f8c98 gui=italic
highlight UserFilenameModified guibg=#292a30 guifg=#d79929 gui=italic
highlight UserFilenameNotModified guibg=#292a30 guifg=#7f8c98 gui=italic
