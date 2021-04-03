require('plugins')
require('globals')
require('keymappings')
require('settings')
require('colorscheme')

vim.cmd('source ~/.config/nvim/vimscript/abbreviations.vim')

-- Plugins
require('nv-compe')
require('nv-lightbulb')
require('nv-lspkind')
require('nv-colorizer')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-galaxyline')
require('nv-bufferline')
require('nv-gitsigns')
require('nv-nvim-autopairs')
require('nv-surround')
require('nv-dashboard')
require('nv-comment')
require('nv-dial')
require('nv-emmet')
require('nv-quickscope')
require('nv-telescope')
require('nv-gitblame')

-- LSP
require('lsp.lua-ls')
require('lsp.elixir-ls')
require('lsp.bash-ls')
require('lsp.elixir-ls')
require('lsp.js-ts-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.vim-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.ruby-ls')
require('lsp.virtual_text')

-- Stop here https://youtu.be/WyLIAa9HM5Q?t=21
