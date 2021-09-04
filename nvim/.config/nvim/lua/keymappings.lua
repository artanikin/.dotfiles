vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Esc>', ':nohl<CR>', { noremap = true, silent = true })

-- file explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- move visual selected
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv=gv', { noremap = true, silent = true })

-- swith between last two buffers
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', { noremap = true, silent = true})

-- copy to end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true})

-- better moving to the wrapping line
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true})

-- window splitting
vim.api.nvim_set_keymap('n', 'ss', ':split<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'sv', ':vsplit<CR>', { noremap = true, silent = true})

-- close buffer
vim.api.nvim_set_keymap('n', '<Leader>d', ':bdelete<CR>', { noremap = true, silent = true})

-- ctrl + r with text highlighted to bring up a confirm menu for replacing all instances of a word
-- required from tpope/abolish plugin
vim.api.nvim_set_keymap('v', '<C-r>', '"hy:%Subvert/<C-r>h//gc<left><left><left>', {})

-- TAB Complete
-- vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>p', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
