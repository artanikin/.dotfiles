lua << END
  require'nvim_lsp'.solargraph.setup{}
  require'nvim_lsp'.vimls.setup{}
END

" Autocomplition
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
    \})
call neomake#configure#automake('nrwi', 500)
let g:neomake_open_list = 0
let g:neomake_virtualtext_prefix = '········ '
let g:neomake_ruby_enabled_makers = ["rubocop"]
let g:neomake_json_enabled_makers = ["jsonlint"]
let g:neomake_vim_enabled_makers = ["vint"]
let g:ruby_doc_command='open'

function! s:ConfigureBuffer()
    nnoremap <buffer> <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
    nnoremap <buffer> <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <buffer> <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>

    if exists('+signcolumn')
      setlocal signcolumn=yes
    endif
endfunction

function! s:SetUpLspHighlights()
  if !wincent#pinnacle#active()
    return
  endif

  execute 'highlight LspDiagnosticsError ' . pinnacle#decorate('italic,underline', 'ModeMsg')

  execute 'highlight LspDiagnosticsHint ' . pinnacle#decorate('bold,italic,underline', 'Type')

  execute 'highlight LspDiagnosticsHintSign ' . pinnacle#highlight({
        \   'bg': pinnacle#extract_bg('ColorColumn'),
        \   'fg': pinnacle#extract_fg('Type')
        \ })

  execute 'highlight LspDiagnosticsErrorSign ' . pinnacle#highlight({
        \   'bg': pinnacle#extract_bg('ColorColumn'),
        \   'fg': pinnacle#extract_fg('ErrorMsg')
        \ })
endfunction

sign define LspDiagnosticsErrorSign text=✖
sign define LspDiagnosticsWarningSign text=⚠
sign define LspDiagnosticsInformationSign text=ℹ
sign define LspDiagnosticsHintSign text=➤

if has('autocmd')
  augroup WincentLanguageClientAutocmds
    autocmd!

    if exists('*nvim_open_win')
      " TODO: figure out how to detect lsp floating window...
      " Can use floating window.
      autocmd BufEnter __LanguageClient__ call s:Bind()
    endif

    autocmd FileType javascript,typescript,vim,ruby  call s:ConfigureBuffer()
    autocmd ColorScheme * call s:SetUpLspHighlights()
  augroup END
endif
