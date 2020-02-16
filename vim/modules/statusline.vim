" Statusline colors
hi! link Base CursorColumn
hi! link Mode PmenuSel
hi! link Git String
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

function! ModeColor() abort
    let l:modecurrent = mode()
    if l:modecurrent == 'n'
      hi! link Mode PmenuSel
      hi! link LineCol PmenuSel
    elseif l:modecurrent == 'i'
      hi! link Mode ErrorMsg
      hi! link LineCol ErrorMsg
    else
      hi! link Mode Normal
      hi! link LineCol Normal
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

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
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
    hi Modi guifg=#efefef guibg=#212333
    hi Filename guifg=#efefef guibg=#212333
    return expand('%f').'*'
  else
    hi Modi guifg=#929dcb guibg=#212333
    hi Filename guifg=#929dcb guibg=#212333
    return expand('%f')
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

  " Current modified status and filename
  let statusline .= "%#Modi# %{CheckMod(&modified)} "

  " Align items to right
  let statusline .= "%="

  " Current filetype
  let statusline .= "%#Filetype# %{CheckFT(&filetype)} "

  " Current line and column
  let statusline .= "%#LineCol# Ln %l, Col %c "
  return statusline
endfunction

function! InactiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#Base#"

  " Full path of the file
  let statusline .= "%#Filename# %F "

  return statusline
endfunction

" Change statusline automatically
augroup Statusline
  autocmd!
  autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  autocmd WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
augroup END
