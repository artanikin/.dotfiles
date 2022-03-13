local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<Space>', '<NOP>', opts)

vim.g.mapleader = ' '

-- no hl
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)
keymap('n', '<Esc>', ':nohl<CR>', opts)

-- file explorer
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

--- better window movement
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- move visual selected
keymap('v', 'K', ':move \'<-2<CR>gv=gv', opts)
keymap('v', 'J', ':move \'>+1<CR>gv=gv', opts)

-- swith between last two buffers
keymap('n', '<Leader><Leader>', '<C-^>', opts)

-- copy to end of line
keymap('n', 'Y', 'y$', opts)

-- better moving to the wrapping line
-- keymap('n', 'k', 'gk', opts)
-- keymap('n', 'j', 'gj', opts)
vim.cmd([[
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'
]])

-- Redirect change operations to the blackhole
keymap('n', 'c', '"_c', opts)
keymap('n', 'C', '"_C', opts)

-- window splitting
keymap('n', 'ss', ':split<CR>', opts)
keymap('n', 'sv', ':vsplit<CR>', opts)

-- close buffer
keymap('n', '<Leader>d', ':Bdelete<CR>', opts)

-- ctrl + r with text highlighted to bring up a confirm menu for replacing all instances of a word
-- required from tpope/abolish plugin
keymap('v', '<C-r>', '"hy:%Subvert/<C-r>h//gc<left><left><left>', opts)

-- TAB Complete
-- keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', opts)

keymap('n', '<Leader>p', ':NvimTreeToggle<CR>', opts)

-- puts the caller
keymap('n', '<Leader>wtf', "oputs '#' * 90<c-m>puts caller<c-m>puts '#' * 90<esc>Kviw", opts)

-- System clipboard for neovide
-- keymap('n', '<C-v>', '"+p', opts)
-- keymap('i', '<C-v>', '"+p', opts)

keymap("n", "<Leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fw", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader>fo", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fb", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fm", "<cmd>lua require'telescope.builtin'.marks()<cr>", opts)
keymap("n", "<Leader>fc", "<cmd>lua require'telescope.builtin'.colorscheme()<cr>", opts)
keymap("n", "<Leader>fv", "<cmd>lua require'user.telescope'.search_dotfiles()<cr>", opts)
keymap("n", "<Leader>ft", "<cmd>lua require'telescope.builtin'.tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fg", "<cmd>lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fh", ":Telescope help_tags<cr>", opts)
keymap("n", "<Leader>fp", ":Telescope projects<cr>", opts)

keymap("n", "<Leader>fM", "<cmd>lua require'user.telescope'.search_rails_models()<cr>", opts)
keymap("n", "<Leader>fC", "<cmd>lua require'user.telescope'.search_rails_controllers()<cr>", opts)
keymap("n", "<Leader>fV", "<cmd>lua require'user.telescope'.search_rails_views()<cr>", opts)
keymap("n", "<Leader>fT", "<cmd>lua require'user.telescope'.search_rails_specs()<cr>", opts)
