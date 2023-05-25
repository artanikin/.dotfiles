local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<Space>', '<NOP>', opts)

vim.g.mapleader = ' '

-- no hl
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)
keymap('n', '<Esc>', ':nohl<CR>', opts)

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

-- ctrl + r with text highlighted to bring up a confirm menu for replacing all instances of a word
-- required from tpope/abolish plugin
-- keymap('v', '<C-r>', '"hy:%Subvert/<C-r>h//gc<left><left><left>', opts)
keymap('n', '<leader>sr', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', opts)

keymap('n', '<Leader>p', ":execute 'NvimTreeToggle' | wincmd =<CR>", opts)

-- puts the caller
keymap('n', '<Leader>wtf', "ofmt.Println(strings.Repeat(\"#\", 90))<c-m>fmt.Printf(\"%#v\")<c-m>fmt.Println(strings.Repeat(\"#\", 90))<esc>ki", opts)
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)

keymap('n', '<C-e>', '3<C-e>', opts)
keymap('n', '<C-y>', '3<C-y>', opts)
