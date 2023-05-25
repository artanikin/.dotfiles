local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "nvim-lua/plenary.nvim",
    { "kyazdani42/nvim-web-devicons", lazy = true },
    {
      "aserowy/tmux.nvim",
      config = function() return require("tmux").setup() end
    },

    {
      "akinsho/bufferline.nvim",
      config = function()
        require("user.bufferline")
      end,
    },

    {
      "ojroques/nvim-bufdel",
      config = function()
        require("user.bufdel")
      end
    },

    {
      "rcarriga/nvim-notify",
      config = function()
        require("user.notify")
      end
    },

    {
      "folke/noice.nvim",
      event = "VeryLazy",
      config = function()
        require("user.noice")
      end,
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      }
    },

    {
      "folke/trouble.nvim",
      config = function()
        require("user.trouble")
      end
    },

    {
      "folke/which-key.nvim",
      lazy = true,
      config = function()
        require("user.which-key")
      end
    },

    {
      "kylechui/nvim-surround",
      config = function()
        require("nvim-surround").setup()
      end
    },

    {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("user.colorizer")
      end,
      cmd = { "ColorizerToggle" },
    },

    {
      "hoob3rt/lualine.nvim",
      event = "VimEnter",
      config = function()
        require("user.lualine")
      end
    },

    {
      "numToStr/Comment.nvim",
      event = "BufRead",
      config = function()
        require("user.comment")
      end
    },

    {
      "artanikin/startuptime.vim",
      lazy = true,
      cmd = "StartupTime"
    },

    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
        require("user.autopairs")
      end
    },

    {
      'nvim-tree/nvim-tree.lua',
      tag = 'nightly',
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
        require("user.nvimtree")
      end,
    },

    {
      "vim-test/vim-test",
      lazy = true,
      config = function()
        require("user.vim-test")
      end,
      keys = { "<leader>tn", "<leader>tf", "<leader>ts", "<leader>tl", "<leader>tv" },
      cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
    },
    "benmills/vimux",

    {
      "machakann/vim-sandwich",
      event = "BufRead"
    },

    {
      "goolord/alpha-nvim",
      config = function()
        require("user.alpha")
      end
    },

    {
      'ray-x/go.nvim',
      config = function()
        require("user.go")
      end
    },

    -- Plugin for editing Ruby on Rails applications
    {
      "tpope/vim-rails",
      ft = {"ruby", "eruby", "haml", "slim"}
    },

    -- LSP
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "arkav/lualine-lsp-progress",

    {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      config = function()
        require "user.cmp"
      end,
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
      }
    },

    {
      "glepnir/lspsaga.nvim",
      config = function()
        require("user.lspsaga")
      end
    },

    {
      "ThePrimeagen/harpoon",
      lazy = true,
      config = function()
        require("user.harpoon")
      end
    },

    -- Git
    {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("user.gitsigns")
      end,
      event = "BufRead"
    },

    {
      'ruifm/gitlinker.nvim',
      config = function()
        require("user.gitlinker")
      end,
      event = "BufRead"
    },

    -- Treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require "user.treesitter"
      end,
      dependencies = {
        "p00f/nvim-ts-rainbow",
        "JoosepAlviste/nvim-ts-context-commentstring",
        "nvim-treesitter/nvim-treesitter-textobjects",
      }
    },


    {
      'nvim-treesitter/nvim-treesitter-context',
      event = "BufReadPre",
      enabled = true,
      opts = { mode = "cursor" },
      config = function()
        require("user.treesitter-context")
      end,
    },

    -- Telescope
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

    {
      'Wansmer/treesj',
      keys = { "<leader>m", "<leader>s","<leader>j" },
      cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
      config = function()
        require("user.treesj")
      end,
    },

    {
      "mfussenegger/nvim-dap",
      config = function()
        require("user.debugger")
      end
    },
    "leoluz/nvim-dap-go",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",

    -- Colors

    --[[ { ]]
    --[[   "rebelot/kanagawa.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.kanagawa" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "ChristianChiarulli/onedark.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.chris_onedark" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "shaunsingh/nord.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.nord" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "marko-cerovac/material.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.material" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "navarasu/onedark.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.onedark" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "luisiacc/gruvbox-baby", ]]
    --[[   config = function() ]]
    --[[     require "themes.gruvbox-baby" ]]
    --[[   end ]]
    --[[ }, ]]

    {
      "catppuccin/nvim",
      as = "catppuccin",
      run = ":CatppuccinCompile",
      config = function()
        require "themes.catppuccin"
      end
    }

    --[[ { ]]
    --[[   "nyoom-engineering/oxocarbon.nvim", ]]
    --[[   config = function() ]]
    --[[     require("themes/oxocarbon") ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "folke/tokyonight.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.tokyonight" ]]
    --[[   end ]]
    --[[ } ]]

    --[[ { ]]
    --[[   "EdenEast/nightfox.nvim", ]]
    --[[   config = function() ]]
    --[[     require "themes.nightfox" ]]
    --[[   end ]]
    --[[ } ]]
}

local opts = {}
require("lazy").setup(plugins, opts)
