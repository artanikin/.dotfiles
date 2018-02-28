set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" ===========================================================================
" NEOVIM CONFIGURATION {{{
" ===========================================================================
if has('nvim')
  set inccommand=split
  set termguicolors

  " let ayucolor='dark'    " light mirage dark
  " colorscheme ayu
  " let g:airline_theme='ayu'

  set background=light
  color one
  let g:airline_theme='one'

  highlight Comment gui=italic cterm=italic

  tnoremap <Esc> <C-\><C-n>
endif
" }}}
