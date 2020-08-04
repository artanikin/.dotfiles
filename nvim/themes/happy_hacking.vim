colorscheme happy_hacking

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
highlight UserTextYankPost guibg=#81A2C7 guifg=#292929

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#292929 guibg=#8DAF67
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#292929 guibg=#F05E48
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#292929 guibg=#FAD566
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#292929 guibg=#8DAF67

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=#292929 guifg=#8DAF67
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=#292929 guifg=#F05E48
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=#292929 guifg=#FAD566

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#292929 guifg=#8DAF67
" UserInsertMode
highlight UserInsertMode guibg=#202020 guifg=#81A2C7 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#202020 guifg=#F05E48 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#202020 guifg=#8DAF67 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#202020 guifg=#8DAF67 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#292929 guifg=#FAD566 gui=italic
highlight UserModiNotModified guibg=#292929 guifg=#525252 gui=italic
highlight UserFilenameModified guibg=#292929 guifg=#FAD566 gui=italic
highlight UserFilenameNotModified guibg=#292929 guifg=#525252 gui=italic

