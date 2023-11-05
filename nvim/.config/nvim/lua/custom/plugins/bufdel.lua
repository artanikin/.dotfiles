return {
  "ojroques/nvim-bufdel",
  config = function()
    require('bufdel').setup {
      next = 'tabs',
      quit = false,  -- quit Neovim when last buffer is closed
    }

    local keymap = vim.keymap
    local opts = {}
    keymap.set('n', '<Leader>bd', ':BufDel<CR>', opts)
    keymap.set('n', '<Leader>bo', ':BufDelOthers<CR>', opts)
  end
}
