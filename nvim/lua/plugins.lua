local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'kabouzeid/nvim-lspinstall'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'mattn/emmet-vim'
  use "rafamadriz/friendly-snippets"
  use 'ChristianChiarulli/html-snippets'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'nvim-treesitter/playground'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'windwp/nvim-ts-autotag'

  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Git
  use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Color
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'
  use 'sheerun/vim-polyglot'

  -- General plugins
  use 'christoomey/vim-tmux-navigator'
  use 'kevinhwang91/nvim-bqf'
  use 'unblevable/quick-scope'
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use 'windwp/nvim-autopairs'
  use 'yamatsum/nvim-cursorline'
  use 'blackcauldron7/surround.nvim'
  use "terrortylor/nvim-comment"
  use 'monaqa/dial.nvim'
  use 'tweekmonster/startuptime.vim'
  use 'elixir-editors/vim-elixir'
  use 'glepnir/dashboard-nvim'
  use 'psliwka/vim-smoothie'
  use 'glepnir/galaxyline.nvim'
end)
