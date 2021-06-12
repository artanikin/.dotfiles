require("settings")
require("keymappings")
require("plugins")
require("colors")

require("lsp")
require("lsp.bash")
require("lsp.css")
require("lsp.docker")
require("lsp.elixir")
require("lsp.js")
require("lsp.json")
require("lsp.lua")
require("lsp.ruby")
require("lsp.vim")
require("a-compe")
require("a-lspkind")
require("a-lightbulb")
require("a-lsp-colors")
require("a-trouble")

require("a-bufferline")
require("a-lualine")
require("a-colorizer")
require("a-gitblame")
require("a-gitsigns")
require("a-comment")
require("a-autopairs")
require("a-neoscroll")
require("a-quickscope")
require("a-telescope")
require("a-treesitter")
require("a-nvimtree")
require("a-emmet")
require("a-vsnip")
require("a-todo-comments")

vim.cmd("source ~/.config/nvim/vimscripts/abbreviations.vim")
vim.cmd("source ~/.config/nvim/vimscripts/functions.vim")
vim.cmd("source ~/.config/nvim/vimscripts/startify.vim")
vim.cmd("source ~/.config/nvim/vimscripts/conflict-marker.vim")
vim.cmd("source ~/.config/nvim/vimscripts/vim-tests.vim")
