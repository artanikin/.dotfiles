let g:github_colors_soft = 1

set background=light
colorscheme github

" hi Search guifg=NONE guibg=#000000 gui=bold ctermfg=green ctermbg=black cterm=bold

" Add Some italic style
highlight Comment gui=italic cterm=italic
highlight htmlArg gui=italic cterm=italic
highlight Folded gui=italic cterm=italic
highlight String gui=italic cterm=italic

highlight! link SignColumn LineNr
highlight! link ColorColumn CursorLine
highlight! link StatusLine LineNr

" Dark BG = #24282E
" LIGHT BG = #ECEEF1
" Highlight yank text
highlight UserTextYankPost guibg=#005CC5 guifg=#ECEEF1

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#ECEEF1 guibg=#22863A
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#ECEEF1 guibg=#B31D28
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#ECEEF1 guibg=#F2E496
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#ECEEF1 guibg=#22863A

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#ECEEF1 guifg=#22863A
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#ECEEF1 guifg=#B31D28
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#ECEEF1 guifg=#F2E496

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#ECEEF1 guifg=#22863A
" UserInsertMode
highlight UserInsertMode guibg=#2D343A guifg=#005CC5 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#2D343A guifg=#B31D28 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#2D343A guifg=#22863A gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#2D343A guifg=#22863A gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#ECEEF1 guifg=#F2E496 gui=italic
highlight UserModiNotModified guibg=#ECEEF1 guifg=#41484F gui=italic
highlight UserFilenameModified guibg=#ECEEF1 guifg=#F2E496 gui=italic
highlight UserFilenameNotModified guibg=#ECEEF1 guifg=#41484F gui=italic

