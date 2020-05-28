let s:has_exec_cache = {}
function! s:has_exec(command)
    if !has_key(s:has_exec_cache, a:command)
        let s:has_exec_cache[a:command] = executable(a:command)
    endif
    return s:has_exec_cache[a:command]
endfunction

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
  " Plugin for editing Ruby on Rails applications
  call dein#add('tpope/vim-rails', { 'on_ft': 'ruby' })
  " A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
  call dein#add('tpope/vim-ragtag')
  " Commenting lines
  call dein#add('tpope/vim-commentary', {
    \ 'on_cmd': 'Commentary',
    \ 'on_map': 'gc'
  \ })
  " Git wrapper
  call dein#add('tpope/vim-fugitive', {
    \ 'if': s:has_exec('git')
  \ })
  " Move to github page on current line (:Gbrowse)
  call dein#add('tpope/vim-rhubarb', {
    \ 'depends': 'vim-fugitive',
    \ 'if': s:has_exec('git')
  \})
  " Show a diff using Vim its sign column
  call dein#add('mhinz/vim-signify', {
    \ 'if': has('signs') && s:has_exec('git')
  \ })
  call dein#add('junegunn/gv.vim', { 'on_cmd': ['RV', 'RV!', 'RV?'] })
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
  " Yank code to the clipboard (Remove spaces on start line)
  " call dein#add('AaronLasseigne/yank-code')
  " Multiline editing
  call dein#add('mg979/vim-visual-multi', {
    \ 'on_map': '<C-n>'
  \ })
  " Startup Screen
  call dein#add('mhinz/vim-startify')
  " Filemanager
  call dein#add('Shougo/defx.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  " Show icons on Defx filemanager
  call dein#add('kristijanhusak/defx-icons', { 'depends': 'defx.nvim' })
  " Show git state on Defx filemanager
  call dein#add('kristijanhusak/defx-git', { 'depends': 'defx.nvim' })
  " FZF
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  " Snippets
  call dein#add('honza/vim-snippets')
  " Git blame
  call dein#add('APZelos/blamer.nvim', {
    \ 'on_cmd': 'BlamerToggle'
  \ })
  " Weapon to fight against conflicts in Vim
  call dein#add('rhysd/conflict-marker.vim')
  " Vim/Ruby Configuration Files
  call dein#add('vim-ruby/vim-ruby', { 'on_ft': 'ruby' })
  " Auto close (X)HTML tags
  call dein#add('alvan/vim-closetag', { 'on_ft': ['html', 'javascript.jsx'] })
  " Automatically highlighting other uses of the current word under the cursor
  call dein#add('RRethy/vim-illuminate')
  " Run tests from Vim
  call dein#add('janko/vim-test', {
    \ 'on_cmd': [
      \ 'TestNearest',
      \ 'TestFile',
      \ 'TestSuite',
      \ 'TestLast',
      \ 'TestVisit'
    \ ]
  \ })
  " Interact with tmux
  call dein#add('benmills/vimux')
  " Switch between single-line and multiline forms of code
  call dein#add('andrewradev/splitjoin.vim', {
    \ 'on_cmd': ['SplitjoinJoin', 'SplitjoinSplit'],
    \ 'on_map': { 'n': ['gJ', 'gS'] }
  \ })
  " Switch segments of text with predefined replacements
  call dein#add('andrewradev/switch.vim', {
    \ 'on_cmd': 'Switch',
    \ 'on_func': 'switch#Switch',
    \ 'on_map': { 'n': '-' }
  \ })
  " Change an HTML(ish) opening tag and take the closing one along as well
  call dein#add('AndrewRadev/tagalong.vim', {
    \ 'on_ft': 'html',
    \ 'on_event': 'InsertEnter'
  \ })
  " Multi-file search for Vim
  call dein#add('wincent/ferret', {
        \ 'on_cmd': 'Ack'
        \ })

  " Intellisense engine
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  " Better Synatx Support
  call dein#add('sheerun/vim-polyglot')

  " The fastest Neovim colorizer
  call dein#add('norcalli/nvim-colorizer.lua', { 'merged': 0 })

  " Markdown preview
  call dein#add('suan/vim-instant-markdown', {'on_ft': ['markdown']})

  " Distraction-free writing in Vim
  call dein#add('junegunn/goyo.vim', { 'on_ft': ['markdown'], 'on_cmd': ['Goyo'] })
  call dein#add('junegunn/limelight.vim', { 'on_cmd': ['Limelight'] } )

  " Shows keybindings in popup
  call dein#add('liuchengxu/vim-which-key')

  " Floating/popup window
  call dein#add('voldikss/vim-floaterm', { 'on_cmd': ['FloatermNew'] })

  " Search and edit multiple files
  call dein#add('dyng/ctrlsf.vim', { 'on_cmd': ['CtrlSF', 'CtrlSFOpen', 'CtrlSFToggle'] })

  " File Explorer
  call dein#add('justinmk/vim-dirvish', { 'on_cmd': ['Dirvish'] })

  " Colorschemes
  call dein#add('lifepillar/vim-gruvbox8')
  call dein#add('artanikin/vim-vwilight')
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('blueshirts/darcula')
  call dein#add('arzg/vim-colors-xcode')
  call dein#add('joshdick/onedark.vim')
  call dein#add('sonph/onehalf', {'rtp': 'vim/'})
  call dein#add('marcopaganini/termschool-vim-theme')
  call dein#add('whatyouhide/vim-gotham')
  call dein#add('romainl/Apprentice')
  call dein#add('vim-scripts/xoria256.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

