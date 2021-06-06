let g:startify_session_dir = '~/.config/nvim/sessions'

" Don't change to directory when selecting a file
let g:startify_files_number = 8
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1

function! Listcommits()
  let git = 'git -C ' . getcwd()
  let commits = systemlist(git . ' log --oneline | head -n5')
  let git = 'G' . git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

" Custom startup list, only show MRU from current directory/project
let g:startify_lists = [
      \  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
      \  { 'type': function('Listcommits'), 'header': [ 'Recent Commits' ] },
      \  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
      \  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
      \  { 'type': 'commands',  'header': [ 'Commands' ]       },
      \ ]

let g:startify_commands = [
  \ { 'ip': [ 'Install Plugins', ':PackerInstal' ] },
  \ { 'up': [ 'Update Plugins', ':PackerUpdate' ] },
  \ { 'st': [ 'Show Startup Time', ':StartupTime' ] },
  \]

let g:startify_bookmarks = [
      \ { 'c': '~/.config/nvim/init.vim' },
      \ { 't': '~/.tmux.conf' },
      \ { 'g': '~/.gitconfig' },
      \ { 'z': '~/.zshrc' }
      \ ]

autocmd User Startified setlocal cursorline
nmap <leader>st :Startify<cr>
