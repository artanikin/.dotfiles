" 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1

colorscheme material

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
highlight UserTextYankPost guibg=#89ddff guifg=#212121

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#212121 guibg=#c3e88d
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#212121 guibg=#ff5370
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#212121 guibg=#ffcb6b
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#212121 guibg=#c3e88d

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#212121 guifg=#c3e88d
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#212121 guifg=#ff5370
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#212121 guifg=#ffcb6b

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#212121 guifg=#c3e88d
" UserInsertMode
highlight UserInsertMode guibg=#2c2c2c guifg=#89ddff gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#2c2c2c guifg=#ff5370 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#2c2c2c guifg=#c3e88d gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#2c2c2c guifg=#c3e88d gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#212121 guifg=#ffcb6b gui=italic
highlight UserModiNotModified guibg=#212121 guifg=#171717 gui=italic
highlight UserFilenameModified guibg=#212121 guifg=#ffcb6b gui=italic
highlight UserFilenameNotModified guibg=#212121 guifg=#171717 gui=italic
