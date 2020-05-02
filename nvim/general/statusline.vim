" Get current mode
let g:currentmode={
      \'n' : 'Normal ',
      \'no' : 'N·Operator Pending ',
      \'v' : 'Visual ',
      \'V' : 'V·Line ',
      \'' : 'V·Block ',
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
      highlight! link UserMode UserInsertMode
      highlight! link UserLineCol UserInsertMode
    elseif l:modecurrent == 'c'
      highlight! link UserMode UserCommandMode
      highlight! link UserLineCol UserCommandMode
    elseif l:modecurrent == 'v' || l:modecurrent == 'V' || l:modecurrent == ''
      highlight! link UserMode UserVisualMode
      highlight! link UserLineCol UserVisualMode
    else
      highlight! link UserMode UserNormalMode
      highlight! link UserLineCol UserNormalMode
    endif
    return ''
endfunction

" Get current mode
function! ModeCurrent() abort
    let l:modecurrent = mode()
    let l:modelist = toupper(get(g:currentmode, l:modecurrent))
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
    hi! link UserModi UserModiModified
    hi! link UserFilename UserModiModified
    return '✘'
  else
    hi! link UserModi UserModiNotModified
    hi! link UserFilename UserModiNotModified
    return ''
  endif
endfunction

" Set active statusline
function! ActiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#UserBase#"

  " Current mode
  let statusline .= "%{ModeColor()}%#UserMode# %{ModeCurrent()}"
  " let statusline .= "%{ModeColor()}%#UserMode#     "

  " Current git branch
  " let statusline .= "%#UserGit# %{StatuslineGit()} %)"
  let statusline .= "%#UserGit# %{StatuslineGit()} %)"

  let statusline .= "%#UserBase#"

  " Truncation point, if not enough width available.
  let statusline .= "%<"

  let statusline .= "%#Comment#%{FilePrefix()}"
  let statusline .= "%#UserModi#%t %{CheckMod(&modified)}"

  " Current filetype
  let statusline .= "%#Comment# [%{CheckFT(&filetype)}]"
  "
  " Align items to right
  let statusline .= "%="

  " Current line and column
  let statusline .= "%#UserLineCol# ℓ %l / 𝚌 %c "
  return statusline
endfunction

" Set incative statusline
function! InactiveLine()
  " Set empty statusline and colors
  let statusline = ""
  let statusline .= "%#UserBase#"

  " Truncation point, if not enough width available.
  let statusline .= "%<"

  let statusline .= "%#Comment#%{FilePrefix()}"
  let statusline .= "%#UserModi#%t %{CheckMod(&modified)}"
  " Full path of the file
  " let statusline .= "%#UserFilename# %F "

  return statusline
endfunction

" Change statusline automatically
augroup Statusline
  autocmd!
  autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  autocmd WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
augroup END
