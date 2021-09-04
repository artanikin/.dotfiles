require('impatient') -- Speedup Neovim

require("settings")
require("keymappings")
require("plugins")
require("colors")

vim.cmd("source ~/.config/nvim/vimscripts/abbreviations.vim")
vim.cmd("source ~/.config/nvim/vimscripts/functions.vim")
vim.cmd("source ~/.config/nvim/vimscripts/startify.vim")
vim.cmd("source ~/.config/nvim/vimscripts/fzf.vim")
