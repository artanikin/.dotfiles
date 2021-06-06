local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)
    -- Packer can manage itself as an optional plugin
    use {"wbthomason/packer.nvim"}
    use {"christoomey/vim-tmux-navigator"}
    use {"gruvbox-community/gruvbox"}
    use {"akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons"}
    use {"norcalli/nvim-colorizer.lua"}
    use {"glepnir/galaxyline.nvim"}
    use {"terrortylor/nvim-comment"}
    use {"tweekmonster/startuptime.vim", cmd = "StartupTime"}
    use {"elixir-editors/vim-elixir"}
    use {"karb94/neoscroll.nvim"}
    use {"editorconfig/editorconfig-vim"}
    use {"windwp/nvim-autopairs"}
    use {"yamatsum/nvim-cursorline"}
    use {"unblevable/quick-scope"}
    use {"hrsh7th/vim-vsnip"}
    use {"mattn/emmet-vim"}
    use {"rafamadriz/friendly-snippets"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"tpope/vim-rsi"}
    use {"tpope/vim-endwise"}
    use {"machakann/vim-sandwich"}
    use {"mg979/vim-visual-multi"}
    use {"mhinz/vim-startify"}
    use {"rhysd/conflict-marker.vim"}
    use {"vim-ruby/vim-ruby"}
    use {"janko/vim-test", requires = "benmills/vimux"} -- Run tests
    use {"dyng/ctrlsf.vim", cmd = "CtrlSF"}
    use {"jez/vim-superman"}
    use {'tpope/vim-rails', ft = {'ruby', 'eruby', 'haml', 'slim'} } -- Plugin for editing Ruby on Rails applications
    use {'tpope/vim-ragtag'} -- A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more

    -- Telescope
    use {"nvim-lua/popup.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-telescope/telescope.nvim"}
    use {"nvim-telescope/telescope-fzy-native.nvim"}

    -- LSP
    use {"neovim/nvim-lspconfig"}
    use {"kabouzeid/nvim-lspinstall"}
    use {"simrat39/symbols-outline.nvim"}
    use {"hrsh7th/nvim-compe"}
    use {"glepnir/lspsaga.nvim"}
    use {"onsails/lspkind-nvim"}
    use {"kosayoda/nvim-lightbulb"}
    use {"wellle/tmux-complete.vim"}

    -- Git
    use {"lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim"}
    use {"f-person/git-blame.nvim"}
    use {"tpope/vim-fugitive"}
    use {"tpope/vim-rhubarb"}

    -- Treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use {"p00f/nvim-ts-rainbow"}
    use {"windwp/nvim-ts-autotag"}
end)
