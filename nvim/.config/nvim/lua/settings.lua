vim.cmd('set iskeyword+=-')                 --Treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')                 --Don't pass messages to |ins-completion-menu|.
vim.o.hidden=true                           --Required to keep multiple buffers open multiple buffers
vim.wo.wrap=true                            --Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.o.pumheight=10                          --Makes popup menu smaller
vim.o.fileencoding="utf-8"                  --The encoding written to file
vim.o.cmdheight=1                           --More space for displaying messages
vim.o.mouse="a"                             --Enable your mouse
vim.o.splitbelow=true                       --Horizontal splits will automatically be below
vim.o.termguicolors=true
vim.o.splitright=true                       --Vertical splits will automatically be to the right
-- vim.o.t_Co="256"                         --Support 256 colors
vim.o.conceallevel=0                        --So that I can see `` in markdown files
vim.cmd('set tabstop=2')                    --Insert 2 spaces for a tab
vim.cmd('set shiftwidth=2')                 --Change the number of space characters inserted for indentation
vim.cmd('set softtabstop=2')
vim.cmd('set expandtab')
vim.bo.expandtab=true                       --Converts tabs to spaces
vim.bo.smartindent=true                     --Makes indenting smart
vim.wo.number=true
vim.wo.relativenumber=true
vim.wo.cursorline=true                      --Enable highlighting of the current line
vim.o.showtabline=2                         --Always show tabs
vim.o.showmode=false                        --We don't need to see things like -- INSERT -- anymore
vim.o.backup=false
vim.o.writebackup=false
vim.wo.signcolumn="yes"                     --Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime=200                        --Faster completion
vim.o.timeoutlen=600                        --By default timeoutlen is 1000 ms
vim.o.clipboard="unnamedplus"               --Copy paste between vim and everything else
vim.o.scrolloff=3 			                --Minimal number of screen lines to keep above and below the cursor
vim.o.sidescrolloff=5 			            --Minimal number of screen columns to keep the left and to the right of the cursor
vim.o.foldlevel=10
vim.cmd([[
" Maintain undo history between sessions
set undofile
set undodir=/var/tmp,/tmp

" List of directories for the backup file
set backupdir=/var/tmp,/tmp
]])
