colorscheme zellner

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" highlight SignColumn same color as LineNr
highlight! link SignColumn LineNr
" highlight colorcolumn
highlight! link ColorColumn CursorLine
hi StatusLine term=bold,reverse cterm=NONE ctermfg=Black ctermbg=LightGray gui=NONE guifg=Black guibg=LightGray
hi Visual term=reverse ctermfg=LightYellow ctermbg=Red gui=NONE guifg=NONE guibg=LightYellow
hi Search term=reverse ctermfg=Black ctermbg=LightBlue gui=NONE guifg=NONE guibg=LightBlue
hi PreProc term=underline ctermfg=Magenta guifg=Green gui=bold

" Highlight yank text
highlight UserTextYankPost guibg=DarkBlue guifg=white

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=white guibg=LightGreen
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=white guibg=DarkRed
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=white guibg=Orange
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=white guibg=LightGreen

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=LightGreen
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=DarkRed
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=Orange

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=NONE guifg=LightGreen
" UserInsertMode
highlight UserInsertMode guibg=NONE guifg=DarkBlue gui=bold
" UserCommandMode
highlight UserCommandMode guibg=NONE guifg=DarkRed gui=bold
" UserVisualMode
highlight UserVisualMode guibg=NONE guifg=LightGreen gui=bold
" UserNormalMode
highlight UserNormalMode guibg=NONE guifg=LightGreen gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=NONE guifg=Orange
highlight UserModiNotModified guibg=NONE guifg=#d2d4de
highlight UserFilenameModified guibg=NONE guifg=Orange
highlight UserFilenameNotModified guibg=NONE guifg=#d2d4de
