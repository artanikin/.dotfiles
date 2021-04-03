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
vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

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

-- TAB Complete
-- vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>p', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ff', ":lua require'telescope.builtin'.find_files()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', ":lua require'telescope.builtin'.live_grep()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fb', ":lua require'telescope.builtin'.buffers()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fo', ":lua require'telescope.builtin'.oldfiles()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fm', ":lua require'telescope.builtin'.marks()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fc', ":lua require'telescope.builtin'.colorscheme()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fs', ":lua require'telescope.builtin'.symbols({ sources = {'emojo'} })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fv', ":lua require'telescope.builtin'.find_files({ prompt_title = '< VimRC >', cwd = '$HOME/.dotfiles/nvim'})<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ft', ":lua require'telescope.builtin'.tags()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fp', ":lua require'telescope.builtin'.file_browser()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fh', ":lua require'telescope.builtin'.help_tags()<CR>", { noremap = true, silent = true })
