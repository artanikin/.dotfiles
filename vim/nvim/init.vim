set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" ===========================================================================
" NEOVIM CONFIGURATION {{{
" ===========================================================================
if has('nvim')
  set inccommand=split
  set termguicolors

  colorscheme codeschool
  let g:airline_theme='base16_codeschool'

  tnoremap <Esc> <C-\><C-n>
endif
" }}}
