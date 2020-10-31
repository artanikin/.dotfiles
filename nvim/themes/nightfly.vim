colorscheme nightfly

" Highlight yank text
highlight UserTextYankPost guibg=#82aaff guifg=#011627

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#011627 guibg=#a1cd5e
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#011627 guibg=#fc514e
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#011627 guibg=#ecc48d
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#011627 guibg=#a1cd5e

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#a1cd5e
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#fc514e
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#ecc48d

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=NONE guifg=#a1cd5e
" UserInsertMode
highlight UserInsertMode guibg=NONE guifg=#82aaff gui=bold
" UserCommandMode
highlight UserCommandMode guibg=NONE guifg=#fc514e gui=bold
" UserVisualMode
highlight UserVisualMode guibg=NONE guifg=#a1cd5e gui=bold
" UserNormalMode
highlight UserNormalMode guibg=NONE guifg=#a1cd5e gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=NONE guifg=#ecc48d
highlight UserModiNotModified guibg=NONE guifg=#acb4c2
highlight UserFilenameModified guibg=NONE guifg=#ecc48d
highlight UserFilenameNotModified guibg=NONE guifg=#acb4c2
