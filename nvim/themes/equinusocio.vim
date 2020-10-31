let g:equinusocio_material_style = 'pure'
colorscheme equinusocio_material

" Highlight yank text
highlight UserTextYankPost guibg=#82aaff guifg=#000000

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#000000 guibg=#c3e88d
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#000000 guibg=#ff5370
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#000000 guibg=#ffcb6b
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#000000 guibg=#c3e88d

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#c3e88d
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#ff5370
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#ffcb6b

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=NONE guifg=#c3e88d
" UserInsertMode
highlight UserInsertMode guibg=NONE guifg=#82aaff gui=bold
" UserCommandMode
highlight UserCommandMode guibg=NONE guifg=#ff5370 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=NONE guifg=#c3e88d gui=bold
" UserNormalMode
highlight UserNormalMode guibg=NONE guifg=#c3e88d gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=NONE guifg=#ffcb6b
highlight UserModiNotModified guibg=NONE guifg=#465258
highlight UserFilenameModified guibg=NONE guifg=#ffcb6b
highlight UserFilenameNotModified guibg=NONE guifg=#465258
