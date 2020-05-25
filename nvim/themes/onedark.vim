" call dein#add('joshdick/onedark.vim')
" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark


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
highlight UserTextYankPost guibg=#56b6c2 guifg=#282c34

" Diff
highlight DiffAdd    term=bold ctermfg=0 ctermbg=2 guifg=#282c34 guibg=#98c379
highlight DiffDelete term=bold ctermfg=0 ctermbg=1 gui=bold guifg=#282c34 guibg=#e06c75
highlight DiffChange term=bold ctermfg=0 ctermbg=4 guifg=#282c34 guibg=#d19a66
highlight DiffText   term=reverse cterm=bold ctermfg=0 ctermbg=4 gui=bold guifg=#282c34 guibg=#98c379

" Diff Gutter
highlight GutterAdd    term=bold ctermfg=0 ctermbg=2 guibg=NONE guifg=#98c379
highlight GutterDelete term=bold ctermfg=0 ctermbg=1 gui=bold guibg=NONE guifg=#e06c75
highlight GutterChange term=bold ctermfg=0 ctermbg=4 guibg=NONE guifg=#d19a66

" Statusline
hi! link UserBase CursorColumn
highlight UserGit guibg=#282c34 guifg=#98c379
" UserInsertMode
highlight UserInsertMode guibg=#313640 guifg=#56b6c2 gui=bold
" UserCommandMode
highlight UserCommandMode guibg=#313640 guifg=#e06c75 gui=bold
" UserVisualMode
highlight UserVisualMode guibg=#313640 guifg=#98c379 gui=bold
" UserNormalMode
highlight UserNormalMode guibg=#313640 guifg=#98c379 gui=bold
" highlight UserFiletype
highlight UserModiModified guibg=#282c34 guifg=#d19a66 gui=italic
highlight UserModiNotModified guibg=#282c34 guifg=#5c6370 gui=italic
highlight UserFilenameModified guibg=#282c34 guifg=#d19a66 gui=italic
highlight UserFilenameNotModified guibg=#282c34 guifg=#5c6370 gui=italic
