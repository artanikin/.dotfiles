local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

-- vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)
    -- Packer can manage itself as an optional plugin
    use {
      "wbthomason/packer.nvim"
    }

    -- Speedup neovim
    vim.fn.setenv("MACOSX_DEPLOYMENT_TARGET", "10.15")
    use {'lewis6991/impatient.nvim', rocks = 'mpack'}

    use {"christoomey/vim-tmux-navigator"}

    -- use {"akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons"}
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
      "terrortylor/nvim-comment",
      cmd = "CommentToggle",
      config = function()
        require("a-comment")
      end,
      setup = function()
         require("core.mappings").comment()
      end
    }
    use {
      "nathom/filetype.nvim",
      config = function()
        vim.g.did_load_filetypes = 1
      end
    }

    use {"tweekmonster/startuptime.vim", cmd = "StartupTime"}
    use {"editorconfig/editorconfig-vim", event = "BufRead"}
    use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
        require("a-autopairs")
      end
    }
    use {"yamatsum/nvim-cursorline"}
    -- use {"unblevable/quick-scope"}
    -- use {"hrsh7th/vim-vsnip"}

    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
        require("a-nvimtree")
      end,
      setup = function()
        require("core.mappings").nvimtree()
      end
    }

    -- use {"tpope/vim-rsi"}
    -- use {"tpope/vim-endwise"}
    -- use {"tpope/vim-abolish"}
  -- use {"rhysd/conflict-marker.vim"}
  -- use {"janko/vim-test", requires = "benmills/vimux"} -- Run tests
    use {"machakann/vim-sandwich", event = "BufRead"}
    -- use {
    --   "mhinz/vim-startify",
    --   config = function()
    --     vim.g.startify_disable_at_vimenter = false
    --   end,
    -- }
    use {
      "glepnir/dashboard-nvim",
      -- disable = not status.dashboard,
      config = function()
        require("a-dashboard")
      end,
      setup = function()
        require("core.mappings").dashboard()
      end,
    }
    use {"vim-ruby/vim-ruby", ft = {"ruby", "eruby", "haml", "slim"}}
    use {"dyng/ctrlsf.vim", cmd = "CtrlSF"}
    use {"tpope/vim-rails", ft = {"ruby", "eruby", "haml", "slim"}} -- Plugin for editing Ruby on Rails applications
    use {"tpope/vim-ragtag", ft = {"eruby", "html", "slim"}} -- A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
    use {
      "kevinhwang91/nvim-bqf",
      event = "VimEnter",
      config = function()
        require("a-nvim-bqf")
      end
    }
    use {"nvim-lua/plenary.nvim"}
    use {"hashivim/vim-terraform", ft = {"terraform"}}

    use {
      "junegunn/fzf.vim",
      requires = { "junegunn/fzf" },
      cmd = {
        "Files",
        "GFiles",
        "GFiles?",
        "Buffers",
        "Colors",
        "Ag",
        "Rg",
        "Lines",
        "BLines",
        "Tags",
        "BTags",
        "History",
        "Marks",
        "Helptags"
      }
    }

    -- use {
    --   "lukas-reineke/indent-blankline.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("plugins.configs.others").blankline()
    --   end,
    -- }

    -- LSP
    use {
      "kabouzeid/nvim-lspinstall",
      opt = true,
      setup = function()
        require("core.utils").packer_lazy_load "nvim-lspinstall"
        -- reload the current file so lsp actually starts for it
        vim.defer_fn(function()
          vim.cmd "silent! e %"
        end, 0)
      end,
    }

    use {
      "neovim/nvim-lspconfig",
      after = "nvim-lspinstall",
      config = function()
        require "plugins.configs.lspconfig"
      end,
    }

    -- use {
    --   "ray-x/lsp_signature.nvim",
    --   after = "nvim-lspconfig",
    --   config = function()
    --     require("plugins.configs.others").signature()
    --   end,
    -- }

    -- use {
    --   "andymass/vim-matchup",
    --   opt = true,
    --   setup = function()
    --     require("core.utils").packer_lazy_load "vim-matchup"
    --   end,
    -- }

    use {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      config = function()
        require "plugins.configs.cmp"
      end,
    }

    use {
      "L3MON4D3/LuaSnip",
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
        require("plugins.configs.others").luasnip()
      end,
    }

    use {
      "saadparwaiz1/cmp_luasnip",
      after = "LuaSnip",
    }

    use {
      "hrsh7th/cmp-nvim-lua",
      after = "cmp_luasnip",
    }

    use {
      "hrsh7th/cmp-nvim-lsp",
      after = "cmp-nvim-lua",
    }

    use {
      "hrsh7th/cmp-buffer",
      after = "cmp-nvim-lsp",
    }

    use {
      "rafamadriz/friendly-snippets",
      after = "cmp-buffer",
    }

    -- Git
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("a-gitsigns")
      end,
      setup = function()
        require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
    }
    use {
      "tpope/vim-fugitive",
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
      end,
    }

    -- Treesitter
    use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      branch = "0.5-compat",
      config = function()
        require "a-treesitter"
      end
    }

    -- Colors
    use {"rafamadriz/neon"}
    use {"EdenEast/nightfox.nvim"}
    use {"kdheepak/monochrome.nvim"}
    use {"bluz71/vim-nightfly-guicolors"}
    use {"gruvbox-community/gruvbox"}
    use {"projekt0n/github-nvim-theme"}
    -- use {"eddyekofo94/gruvbox-flat.nvim"}
    -- use {"folke/tokyonight.nvim"}
    -- use {"navarasu/onedark.nvim"}
    -- use {"shaunsingh/nord.nvim"}
    -- use {"marko-cerovac/material.nvim"}
    -- use {"adisen99/codeschool.nvim", requires = {"rktjmp/lush.nvim"}}
end)
