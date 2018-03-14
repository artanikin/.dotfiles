set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" ===========================================================================
" NEOVIM CONFIGURATION {{{
" ===========================================================================
if has('nvim')
  set inccommand=split
  set termguicolors

  tnoremap <Esc> <C-\><C-n>
endif
" }}}
