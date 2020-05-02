call plug#begin('~/.config/nvim/autoload/plugged')

  " Navigation through vim windows and tmux panels
  Plug 'christoomey/vim-tmux-navigator'
  " Better Synatx Support
  Plug 'sheerun/vim-polyglot'
  " Buffer list on tabline
  Plug 'ap/vim-buftabline'
  " Surrounding
  Plug 'machakann/vim-sandwich'
  " Insert or delete brackets in pair
  Plug 'jiangmiao/auto-pairs'
  " Intellisense engine
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  " Profiling vim startup
  Plug 'tweekmonster/startuptime.vim', { 'on': 'StartupTime' }
  " Plugin for editing Ruby on Rails applications
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
  " A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
  Plug 'tpope/vim-ragtag'
  " Wisely add `end` in ruby, endfunction/endif/more in vim script
  " Plug 'tpope/vim-endwise', { 'for': 'ruby', 'on': 'InsertEnter' }
  " Commenting lines
  Plug 'tpope/vim-commentary'
  " Git wrapper
  Plug 'tpope/vim-fugitive'
  " Move to github page on current line (:Gbrowse)
  Plug 'tpope/vim-rhubarb'
  " Show a diff using Vim its sign column
  " Plug 'mhinz/vim-signify'
  " Highlight yanked text
  Plug 'machakann/vim-highlightedyank'
   " Multiline editing
  Plug 'mg979/vim-visual-multi'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git blame
  Plug 'APZelos/blamer.nvim', { 'on': 'BlamerToggle' }
  " Weapon to fight against conflicts in Vim
  Plug 'rhysd/conflict-marker.vim'
  " Auto close (X)HTML tags
  Plug 'alvan/vim-closetag', { 'for': ['html', 'javascript.jsx'] }
  " Automatically highlighting other uses of the current word under the cursor
  Plug 'RRethy/vim-illuminate'
  " Run tests from Vim
  Plug 'janko/vim-test', {
    \ 'on': [
      \ 'TestNearest',
      \ 'TestFile',
      \ 'TestSuite',
      \ 'TestLast',
      \ 'TestVisit'
    \ ]
  \ }
  " Interact with tmux
  Plug 'benmills/vimux'
  " Switch between single-line and multiline forms of code
  Plug 'andrewradev/splitjoin.vim'
  " Switch segments of text with predefined replacements
  Plug 'andrewradev/switch.vim'
  " Change an HTML(ish) opening tag and take the closing one along as well
  Plug 'AndrewRadev/tagalong.vim', { 'for': 'html', 'on': 'InsertEnter' }
  " Multi-file search for Vim
  Plug 'wincent/ferret', { 'on': 'Ack' }
  " Startup Screen
  Plug 'mhinz/vim-startify'
  " Filemanager
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  " Show icons on Defx filemanager
  Plug 'kristijanhusak/defx-icons'
  " Show git state on Defx filemanager
  Plug 'kristijanhusak/defx-git'
  " The fastest Neovim colorizer
  Plug 'norcalli/nvim-colorizer.lua'

  " Themes
  Plug 'joshdick/onedark.vim'
  Plug 'tomasiser/vim-code-dark'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'artanikin/vwilight'

call plug#end()
