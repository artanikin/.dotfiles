-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options mere
-- порт

vim.opt.spelllang = { "en", "ru" }
vim.opt.wrap = true

-- vim.cmd("colorscheme habamax")

-- Cool floating window popup menu for completion on command line
vim.opt.pumblend = 0
vim.opt.wildmode = "longest:full"
vim.opt.wildoptions = "pum"

vim.diagnostic.config({ virtual_lines = true })

vim.opt.shell = "fish"
