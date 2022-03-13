local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  print "Installing packer close and reopen Nvim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  max_jobs = 15,
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  }
}

return require("packer").startup({
  function(use)
    use { "wbthomason/packer.nvim" } -- Have packer manage itself
    use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
    use { "nvim-lua/popup.nvim" } -- An implementation of the Popup API from vim in Neovim

    -- Speedup neovim
    vim.fn.setenv("MACOSX_DEPLOYMENT_TARGET", "10.15")
    use { "lewis6991/impatient.nvim", rocks = "mpack" }

    use { "kyazdani42/nvim-web-devicons" }

    use { "christoomey/vim-tmux-navigator" }

    use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight

    -- use {
    --   "ahmedkhalf/project.nvim",
    --   config = function()
    --     require("user.project")
    --   end
    -- }

    use {
      "akinsho/nvim-bufferline.lua",
      config = function()
        require("user.bufferline")
      end,
    }
    use { "moll/vim-bbye" }

    -- use {
    --   "sunjon/shade.nvim",
    --   config = function()
    --     require("user.shade")
    --   end,
    -- }

    -- use {
    --   "norcalli/nvim-colorizer.lua",
    --   event = "BufRead",
    --   config = function()
    --      require("a-colorizer")
    --   end
    -- }

    use {
      "hoob3rt/lualine.nvim",
      event = "VimEnter",
      config = function()
        require("a-lualine")
      end
    }

    use {
      "numToStr/Comment.nvim",
      event = "BufRead",
      config = function()
        require("user.comment")
      end
    }

    use {
      "nathom/filetype.nvim",
      config = function()
        vim.g.did_load_filetypes = 1
      end
    }

    use {
      "artanikin/startuptime.vim",
      opt = true,
      cmd = "StartupTime"
    }

    use {
      "editorconfig/editorconfig-vim",
      event = "BufRead"
    }

    use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
        require("user.autopairs")
      end
    }

    use {
      'kyazdani42/nvim-tree.lua',
      opt = true,
      commit = "d8bf1ad",
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
        require("user.nvimtree")
      end,
      setup = function()
        require("core.mappings").nvimtree()
      end
    }

    use {
      "vim-test/vim-test",
      opt = true,
      config = function()
        require("a-vim-tests")
      end,
      setup = function()
        require("core.mappings").tests()
      end,
      cmd = {
        "TestNearest",
        "TestFile",
        "TestSuite",
        "TestLast",
        "TestVisit"
      }
    }
    use {
      "benmills/vimux",
      after = "vim-test"
    }

    use { 
      "machakann/vim-sandwich",
      event = "BufRead"
    }

    use {
      "goolord/alpha-nvim",
      config = function()
        require("user.alpha")
      end
    }

    -- Plugin for editing Ruby on Rails applications
    use {
      "tpope/vim-rails",
      ft = {"ruby", "eruby", "haml", "slim"}
    }

    -- use {
    --   "stevearc/dressing.nvim",
    --   config = function()
    --     require("a-dressing")
    --   end
    -- }

    -- LSP
    use { "neovim/nvim-lspconfig" } -- enable LSP
    use { "williamboman/nvim-lsp-installer" } -- language server installer
    -- use {
    --   "jose-elias-alvarez/null-ls.nvim",
    --   config = function()
    --     require("lsp.null-ls")
    --   end
    -- }
    use { "arkav/lualine-lsp-progress" }

    -- completion plugin
    use {
      "hrsh7th/nvim-cmp",
      config = function()
        require "plugins.configs.cmp"
      end
    }

    -- snippet completions
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/cmp-nvim-lua" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-path" }

    -- snippet engine
    use { "L3MON4D3/LuaSnip" }
    use { "rafamadriz/friendly-snippets" }

    -- Git
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("user.gitsigns")
      end,
      setup = function()
        require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
      event = "BufRead"
    }
    use {
      "tpope/vim-fugitive",
      opt = true,
      cmd = {
        "Git",
        "Gdiff",
        "Gdiffsplit",
        "Gvdiffsplit",
        "Gwrite",
        "Gw",
        "Gdelete",
        "Gd",
        "Gmove",
      },
      setup = function()
        require("core.mappings").vim_fugitive()
      end
    }
    use {
      'ruifm/gitlinker.nvim',
      config = function()
        require("a-gitlinker")
      end,
      setup = function()
        require("core.mappings").gitlinker()
      end,
      event = "BufRead"
    }

    -- Treesitter
    use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      run = ":TSUpdate",
      config = function()
        require "a-treesitter"
      end
    }

    use {
      "p00f/nvim-ts-rainbow",
      after = "nvim-treesitter"
    }

    use {
      "JoosepAlviste/nvim-ts-context-commentstring",
      after = "nvim-treesitter"
    }

    -- Telescope
    use { "nvim-telescope/telescope.nvim" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

    -- Colors

    -- use {
    --   "rebelot/kanagawa.nvim",
    --   config = function()
    --     require "themes.kanagawa"
    --   end
    -- }

    -- use {
    --   "LunarVim/darkplus.nvim",
    --   config = function()
    --     require "themes.darkplus"
    --   end
    -- }

    -- use {
    --   "LunarVim/onedarker.nvim",
    --   config = function()
    --     require "themes.onedarker"
    --   end
    -- }

    use {
      "Mofiqul/vscode.nvim",
      config = function()
        require "themes.vscode"
      end
    }

    -- use {
    --   "navarasu/onedark.nvim",
    --   config = function()
    --     require "themes.onedark"
    --   end
    -- }

    -- use {
    --   "Mofiqul/dracula.nvim",
    --   config = function()
    --     require "themes.dracula"
    --   end
    -- }

    -- use {
    --   "savq/melange",
    --   config = function()
    --     require "themes.melange"
    --   end
    -- }

    -- use {
    --   "luisiacc/gruvbox-baby",
    --   config = function()
    --     require "themes.gruvbox-baby"
    --   end
    -- }

    -- use {
    --   "catppuccin/nvim",
    --   as = "catppuccin",
    --   config = function()
    --     require "themes.catppuccin"
    --   end
    -- }

    -- use {
    --   "folke/tokyonight.nvim",
    --   config = function()
    --     require "themes.tokyonight"
    --   end
    -- }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the enf after all plugins
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
  end,
  config = {
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
})
