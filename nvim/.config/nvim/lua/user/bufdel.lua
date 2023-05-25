require('bufdel').setup {
  next = 'tabs',
  quit = false,  -- quit Neovim when last buffer is closed
}

local keymap = vim.api.nvim_set_keymap
local opts = {}
keymap('n', '<Leader>bd', ':BufDel<CR>', opts)
keymap('n', '<Leader>bo', ':BufDelOthers<CR>', opts)
