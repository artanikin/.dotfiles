set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" ===========================================================================
" NEOVIM CONFIGURATION {{{
" ===========================================================================
if has('nvim')
  set inccommand=split
  set termguicolors

  colorscheme sexy-railscasts-256
  let g:airline_theme='base16_railscasts'

  tnoremap <Esc> <C-\><C-n>
endif
" }}}
