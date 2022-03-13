require('user.impatient') -- Speedup Neovim

require("settings")
require("keymappings")
require("plugins")
require("abbreviations")
require("autocommands")

require("lsp")
require("user.telescope")

vim.cmd("source ~/.config/nvim/vimscripts/functions.vim")
