" Statusline Default colors
hi! link Base CursorColumn
hi! link Mode PmenuSel
hi! link Git Function
hi! link Filetype CursorColumn
hi! link LineCol PmenuSel

" Get current mode
let g:currentmode={
      \'n' : 'Normal ',
      \'no' : 'N·Operator Pending ',
      \'v' : 'Visual ',
      \'V' : 'V·Line ',
      \'^V' : 'V·Block ',
      \'s' : 'Select ',
      \'S': 'S·Line ',
      \'^S' : 'S·Block ',
      \'i' : 'Insert ',
      \'R' : 'Replace ',
      \'Rv' : 'V·Replace ',
      \'c' : 'Command ',
      \'cv' : 'Vim Ex ',
      \'ce' : 'Ex ',
      \'r' : 'Prompt ',
      \'rm' : 'More ',
      \'r?' : 'Confirm ',
      \'!' : 'Shell ',
      \'t' : 'Terminal '
      \}

" Change colors when mode change
function! ModeColor() abort
    let l:modecurrent = mode()
    if l:modecurrent == 'i'
      hi! link Mode DiffAdd
      hi! link LineCol DiffAdd
    else
      hi! link Mode PmenuSel
      hi! link LineCol PmenuSel
    endif
    return ''
endfunction

" Get current mode
function! ModeCurrent() abort
    let l:modecurrent = mode()
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

" Get Git branch name
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" Show git branch if exist
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! FilePrefix() abort
  let l:basename=expand('%:h')
  if l:basename ==# '' || l:basename ==# '.'
    return ''
  elseif has('modify_fname')
    " Make sure we show $HOME as ~.
    return substitute(fnamemodify(l:basename, ':~:.'), '/$', '', '') . '/'
  else
    " Make sure we show $HOME as ~.
    return substitute(l:basename . '/', '\C^' . $HOME, '~', '')
  endif
endfunction

" Get current filetype
function! CheckFT(filetype)
  if a:filetype == ''
    return '-'
  else
    return tolower(a:filetype)
  endif
endfunction

" Check modified status
function! CheckMod(modi)
  if a:modi == 1
    hi! link Modi String
    hi! link Filename Type
    return '✘'
  else
    hi! link Modi Comment
    hi! link Filename Comment
    return ''
  endif
endfunction

" Set active statusline
function! ActiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " Current mode
  let statusline .= "%{ModeColor()}%#Mode# %{ModeCurrent()}"

  " Current git branch
  let statusline .= "%#Git# %{StatuslineGit()} %)"

  let statusline .= "%#Base#"

  " Truncation point, if not enough width available.
  let statusline .= "%<"

  let statusline .= "%#Comment#%{FilePrefix()}"
  let statusline .= "%#Modi#%t %{CheckMod(&modified)}"

  " Align items to right
  let statusline .= "%="

  " Current filetype
  let statusline .= "%#Filetype# %{CheckFT(&filetype)} "

  " Current line and column
  let statusline .= "%#LineCol# ℓ %l / 𝚌 %c "
  return statusline
endfunction

" Set incative statusline
function! InactiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " Truncation point, if not enough width available.
  let statusline .= "%<"

  let statusline .= "%#Comment#%{FilePrefix()}"
  let statusline .= "%#Modi#%t %{CheckMod(&modified)}"
  " Full path of the file
  " let statusline .= "%#Filename# %F "

  return statusline
endfunction

" Change statusline automatically
augroup Statusline
  autocmd!
  autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  autocmd WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
augroup END
