-- return {
--   {
--     "bluz71/vim-nightfly-guicolors",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       vim.cmd.colorscheme("nightfly")
--     end,
--   },
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  build = ":CatppuccinCompile",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      compile = {
        enabled = true,
        path = vim.fn.stdpath "cache" .. "/catppuccin"
      },
      transparent_background = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        functions = { "italic" },
        strings = { "italic" },
      },
      integrations = {
        alpha = true,
        gitsigns = true,
        lsp_saga = true,
        cmp = true,
        nvimtree = true,
        treesitter_context = true,
        treesitter = true,
        ts_rainbow = true,
        symbols_outline = false,
        telescope = true,
        harpoon = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        markdown = true,
        mason = true,
        which_key = true,
      },
    })

    vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
    vim.cmd("colorscheme catppuccin")

    vim.cmd([[
      " Change colors for Float window
      highlight NormalFloat guifg=#89b4fa guibg=NONE
      highlight FloatBorder guifg=#89b4fa guibg=NONE
      highlight LspFloatWinNormal guibg=NONE
      highlight TelescopeNormal guifg=#89b4fa guibg=NONE
    ]])
  end
}

-- return {
--   "folke/tokyonight.nvim",
--   config = function()
--     require("tokyonight").setup({
--       style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night`, `moon` and `day`
--       transparent = false,
--       terminal_colors = false,
--       styles = {
--         comments = "italic",
--         keywords = "italic",
--         functions = "italic",
--         variables = "NONE",
--         sidebars = "dark", -- style for sidebars, see below
--         floats = "transparent", -- style for floating windows
--       },
--       sidebars = { "qf", "help", "terminal", "packer" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--       day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--       hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--       dim_inactive = false, -- dims inactive windows
--       lualine_bold = true,
--     })
--     vim.cmd("colorscheme tokyonight")
--   end
-- }

-- return {
--   "luisiacc/gruvbox-baby",
--   config = function()
--     vim.g.gruvbox_baby_telescope_theme = false
--     vim.g.gruvbox_baby_comment_style = "italic"
--     vim.g.gruvbox_baby_keyword_style = "italic"
--     vim.g.gruvbox_baby_background_color = "dark" -- dark, medium, soft, soft_flat
--     vim.g.gruvbox_baby_transparent_mode = false
--     vim.g.gruvbox_baby_use_original_palette = false
--
--     vim.g.gruvbox_baby_highlights = {
--         NormalFloat = { fg = "#ebdbb2", bg = "NONE" },
--         FloatBorder = { fg = "#ebdbb2", bg = "NONE" },
--         CmpItemMenu = { fg = "#665c54", bg = nil },
--         CmpItemMenuDefault = { fg = "#ebdbb2", bg = nil },
--         Pmenu = { fg = "#ebdbb2", guibg = nil },
--         QuickFixLine = { bg="#32302f" },
--
--     }
--
--     vim.cmd.colorscheme("gruvbox-baby")
--     vim.cmd([[
--         highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--         highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--         highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--         highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--         highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--         highlight Underlined cterm=undercurl gui=undercurl guifg=#cc241d
--     ]])
--   end
-- }


-- return {
--   'kaiuri/nvim-juliana',
--   lazy = false,
--   config = function()
--     vim.cmd.colorscheme 'juliana'
--
--     vim.cmd([[
--       highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--       highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--       highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--       highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--       highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--       highlight Underlined cterm=undercurl gui=undercurl guifg=#cc241d
--       highlight NvimTreeFileNew guifg=#5fb4b4
--     ]])
--   end
-- }

-- return {
--   'ramojus/mellifluous.nvim',
--   lazy = false,
--   config = function()
--     require'mellifluous'.setup({
--       dim_inactive = false,
--       color_set = 'mountain', -- mellifluous, alduin, mountain, tender
--       styles = { -- see :h attr-list for options. set {} for NONE, { option = true } for option
--         comments = { italic = true },
--         conditionals = {},
--         folds = {},
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--       },
--       transparent_background = {
--         enabled = false,
--         floating_windows = true,
--         telescope = true,
--         file_tree = true,
--         cursor_line = true,
--         status_line = false,
--       },
--       flat_background = {
--         line_numbers = false,
--         floating_windows = false,
--         file_tree = false,
--         cursor_line_number = false,
--       },
--       mellifluous = {
--         neutral = false, -- set this to false and bg_contrast to 'medium' for original mellifluous (then it was called meliora theme)
--         bg_contrast = 'medium' -- options: 'soft', 'medium', 'hard'
--       }
--     })
--
--     vim.cmd.colorscheme 'mellifluous'
--
--     vim.cmd([[
--   highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--   highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--   highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--   highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--   highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--   highlight Underlined cterm=undercurl gui=undercurl guifg=#cc241d
--   highlight NvimTreeFileNew guifg=#5fb4b4
-- ]])
--   end,
-- }

-- return {
--   "LunarVim/Colorschemes",
--   config = function ()
--     vim.g.transparent_background = false        -- transparent background(Default: false)
--     vim.g.italic_comments = true               -- italic comments(Default: true)
--     vim.g.italic_keywords = true               -- italic keywords(Default: true)
--     vim.g.italic_functions = true              -- italic functions(Default: false)
--     vim.g.italic_variables = true              -- italic variables(Default: false)
--
--     vim.cmd.colorscheme("lunar")
--     vim.cmd([[
--       highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--       highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--       highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--       highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--       highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--       highlight Underlined cterm=undercurl gui=undercurl guifg=#cc241d
--       " highlight NormalFloat guifg=#2f333f guibg=NONE
--       " highlight FloatBorder guifg=#474e5e guibg=NONE
--       " highlight LspFloatWinNormal guibg=NONE
--       " highlight TelescopeNormal guifg=#d4d4d4 guibg=NONE
--     ]])
--   end
-- }

-- return {
--   "rockerBOO/boo-colorscheme-nvim",
--   config = function()
--     require("boo-colorscheme").use({
--       italic = true,      -- toggle italics
--       theme = "boo",      -- boo, sunset_cloud, radioactive_waste, forest_stream, crimson_moonlight,
--     })
--
--     vim.cmd([[
--       highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--       highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--       highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--       highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--       highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--       highlight Underlined cterm=undercurl gui=undercurl guifg=#80a0ff
--     ]])
--   end
-- }

-- return {
--   "miikanissi/modus-themes.nvim",
--   priority = 1000,
--   config = function()
--     -- Default options
--     require("modus-themes").setup({
--       -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
--       -- `auto` will automatically set style based on background set with vim.o.background
--       style = "auto",
--       variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
--       styles = {
--         -- Style to be applied to different syntax groups
--         -- Value is any valid attr-list value for `:help nvim_set_hl`
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--       },
--
--       --- You can override specific color groups to use other groups or a hex color
--       --- function will be called with a ColorScheme table
--       on_colors = function(colors) _ = colors end,
--
--       --- You can override specific highlights to use other groups or a hex color
--       --- function will be called with a Highlights and ColorScheme table
--       on_highlights = function(highlights, colors)
--         _ = highlights
--         _ = colors
--       end,
--     })
--
--     vim.cmd.colorscheme("modus")
--
--     vim.cmd([[
--       highlight DiffAdd guifg=#a0e0a0 guibg=NONE
--       highlight DiffChange guifg=#efef80 guibg=NONE
--       highlight DiffDelete guifg=#ffbfbf guibg=NONE
--
--       " highlight DiagnosticUnderlineOk cterm=undercurl gui=undercurl guisp=LightGreen
--       " highlight DiagnosticUnderlineHint cterm=undercurl gui=undercurl guisp=LightGrey
--       " highlight DiagnosticUnderlineInfo cterm=undercurl gui=undercurl guisp=LightBlue
--       " highlight DiagnosticUnderlineWarn cterm=undercurl gui=undercurl guisp=Orange
--       " highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=Red
--       " highlight Underlined cterm=undercurl gui=undercurl guifg=#80a0ff
--     ]])
--   end
-- }
