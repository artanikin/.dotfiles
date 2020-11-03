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
  " Readline style insertion
  call dein#add('tpope/vim-rsi')
  " Show a diff using Vim its sign column
  call dein#add('mhinz/vim-signify')
  " Helps to end certain structures automatically
  call dein#add('tpope/vim-endwise')
  " Increase and decrease dates
  call dein#add('tpope/vim-speeddating')
  " Rbenv integration
  call dein#add('tpope/vim-rbenv')
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
  " FZF
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  " Snippets
  call dein#add('SirVer/ultisnips')
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
  " Highlight enclosing tag
  call dein#add('valloric/matchtagalways', { 'on_ft': ['html', 'xml', 'xhtml'] })
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
  call dein#add('andrewradev/splitjoin.vim')
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

  " Better Synatx Support
  " call dein#add('sheerun/vim-polyglot')

  " The fastest Neovim colorizer
  call dein#add('norcalli/nvim-colorizer.lua', { 'merged': 0 })

  " Markdown preview
  call dein#add('suan/vim-instant-markdown', {'on_ft': ['markdown']})

  " Distraction-free writing in Vim
  " call dein#add('junegunn/goyo.vim', { 'on_ft': ['markdown'], 'on_cmd': ['Goyo'] })
  " call dein#add('junegunn/limelight.vim', { 'on_cmd': ['Limelight'] } )

  " Shows keybindings in popup
  call dein#add('liuchengxu/vim-which-key')

  " Floating/popup window
  call dein#add('voldikss/vim-floaterm', { 'on_cmd': ['FloatermNew'] })

  " Search and edit multiple files
  call dein#add('dyng/ctrlsf.vim', { 'on_cmd': ['CtrlSF', 'CtrlSFOpen', 'CtrlSFToggle'] })

  " File Explorer
  call dein#add('justinmk/vim-dirvish', { 'on_cmd': ['Dirvish'] })

  call dein#add('pangloss/vim-javascript', { 'on_ft': ['javascript', 'vue'] })

  " call dein#add('dense-analysis/ale')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/deoplete-lsp')
  call dein#add('neovim/nvim-lsp')

  " Neomake
  call dein#add('neomake/neomake')

  " Swap to words
  call dein#add('tommcdo/vim-exchange')

  " Show man pages in vim
  call dein#add('jez/vim-superman', { 'on_cmd': ['SuperMan'] })

  " Highlight and live preview in subsitude command
  call dein#add('markonm/traces.vim')

  " Sugar for marks
  " call dein#add('kshenoy/vim-signature')

  " f/t - search on steroids
  " call dein#add('rhysd/clever-f.vim')

  " Org-mode fov vim
  " call dein#add('jceb/vim-orgmode', { 'on_ft': ['org'] })

  " Smooth scrolling
  " call dein#add('psliwka/vim-smoothie')

  " Tagbar
  " call dein#add('preservim/tagbar', { 'on_cmd': ['TagbarToggle'] })

  " VimWiki
  " call dein#add('vimwiki/vimwiki', { 'on_ft': ['md', 'markdown']})

  " Editorconfig
  call dein#add('editorconfig/editorconfig-vim', { 'merged': 0 })

  " Icons (lua)
  call dein#add('kyazdani42/nvim-web-devicons')
  " Tabs
  call dein#add('romgrk/barbar.nvim')

  " Statusline
  call dein#add('glepnir/galaxyline.nvim')

  " Colorschemes
  call dein#add('nvim-treesitter/nvim-treesitter', { 'merged': 0 })
  call dein#add('christianchiarulli/nvcode-color-schemes.vim')

  " Colorschemes switcher
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-colorscheme-switcher')
  " Colorschemes
  " call dein#add('lifepillar/vim-gruvbox8')
  " call dein#add('artanikin/vim-vwilight')
  " call dein#add('arcticicestudio/nord-vim')
  " call dein#add('arzg/vim-colors-xcode')
  " call dein#add('joshdick/onedark.vim')
  " call dein#add('sonph/onehalf', {'rtp': 'vim/'})
  " call dein#add('wadackel/vim-dogrun')
  " call dein#add('artanikin/vim-synthwave84')
  " call dein#add('YorickPeterse/happy_hacking.vim')
  " call dein#add('kaicataldo/material.vim')
  " call dein#add('cocopon/iceberg.vim')
  " call dein#add('patstockwell/vim-monokai-tasty')
  " call dein#add('cormacrelf/vim-colors-github')
  " call dein#add('bluz71/vim-nightfly-guicolors')
  " call dein#add('chuling/equinusocio-material.vim')
  " call dein#add('sts10/vim-pink-moon')
  " call dein#add('habamax/vim-habanight')
  " call dein#add('tomasiser/vim-code-dark')
  " call dein#add('dracula/vim')
  call dein#add('jonathanfilip/vim-lucius')

  " Required:
  call dein#end()
  call dein#save_state()
endif

