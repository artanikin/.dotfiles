set runtimepath+=/Users/artyomanikin/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('wsdjeg/dein-ui.vim')

  " Navigation through vim windows and tmux panels
  call dein#add('christoomey/vim-tmux-navigator')

  " Buffer list on tabline
  call dein#add('ap/vim-buftabline')
  " Commenting lines
  call dein#add('tpope/vim-commentary', {
    \ 'on_cmd': 'Commentary',
    \ 'on_map': 'gc'
  \ })
  " Readline style insertion
  call dein#add('tpope/vim-rsi')
  " Git wrapper
  call dein#add('tpope/vim-fugitive')
  " Move to github page on current line (:Gbrowse)
  call dein#add('tpope/vim-rhubarb')
  " Insert or delete brackets, parens, quotes in pair
  call dein#add('jiangmiao/auto-pairs', {
    \ 'on_event': 'InsertEnter'
  \ })
  " Surrounding
  call dein#add('machakann/vim-sandwich')
  " Profiling vim startup
  call dein#add('tweekmonster/startuptime.vim', {
    \ 'on_cmd': 'StartupTime'
  \ })
  " FZF
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  " File Explorer
  call dein#add('justinmk/vim-dirvish', { 'on_cmd': ['Dirvish'] })
  " Shows keybindings in popup
  call dein#add('liuchengxu/vim-which-key')
  " The fastest Neovim colorizer
  call dein#add('norcalli/nvim-colorizer.lua', { 'merged': 0 })

  " Colorschemes
  call dein#add('lifepillar/vim-gruvbox8')
  call dein#add('arzg/vim-colors-xcode')

  " Required:
  call dein#end()
  call dein#save_state()
endif
