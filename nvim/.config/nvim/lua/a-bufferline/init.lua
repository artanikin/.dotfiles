require'bufferline'.setup{}

-- move between buffers
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true})
