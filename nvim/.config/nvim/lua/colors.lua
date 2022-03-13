-- Gruvbox
-- vim.g.gruvbox_invert_selection=0
-- vim.g.gruvbox_italic=1
-- vim.g.gruvbox_contrast_dark="soft" -- hard, medium, soft
-- vim.g.gruvbox_sign_column="bg0"
-- vim.cmd('colorscheme gruvbox')

-- Onenord
-- require('onenord').setup({
--   borders = true, -- Split window borders
--   italics = {
--     comments = true, -- Italic comments
--     strings = true, -- Italic strings
--     keywords = false, -- Italic keywords
--     functions = false, -- Italic functions
--     variables = false, -- Italic variables
--   },
--   disable = {
--     background = false, -- Disable setting the background color
--     cursorline = false, -- Disable the cursorline
--     eob_lines = false, -- Hide the end-of-buffer lines
--   },
-- })
-- vim.cmd('colorscheme onenord')

-- vim.cmd [[colorscheme substrata]]

-- require('base16-colorscheme').setup({})
-- vim.cmd('colorscheme base16-nord')

-- Tokyonight
-- vim.g.tokyonight_style = "day" -- "storm, night, day"
-- vim.g.tokyonight_italic_comments = true
-- vim.g.tokyonight_italic_keywords = true
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.cmd[[colorscheme tokyonight]]

-- Synthwave84
-- vim.g.synthwave84_style = "day" -- "storm, night, day"
-- vim.g.synthwave84_italic_comments = true
-- vim.g.synthwave84_italic_keywords = true
-- vim.g.synthwave84_italic_functions = true
-- vim.g.synthwave84_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.cmd[[colorscheme synthwave84]]

-- OneDark
-- require('onedark').setup({
--   comment_style = "italic",
--   keyword_style = "NONE",
--   function_style = "NONE",
--   variable_style = "NONE",
--   hide_inactive_statusline = true,
--   dark_sidebar = false,
--   dark_float = false,
--   highlight_linenumber = true
-- })

-- OneDarkPro
-- local onedarkpro = require('onedarkpro')
-- onedarkpro.setup({
--   theme = "onedark", -- The theme to be used (opts: 'onedark' or 'onelight')
--   styles = {
--       strings = "italic", -- Style that is applied to strings
--       comments = "italic", -- Style that is applied to comments
--       keywords = "bold", -- Style that is applied to keywords
--       -- functions = "bold", -- Style that is applied to functions
--       -- variables = "NONE", -- Style that is applied to variables
--   },
--   options = {
--       bold = true, -- Use the themes opinionated bold styles?
--       italic = true, -- Use the themes opinionated italic styles?
--       underline = true, -- Use the themes opinionated underline styles?
--       undercurl = true, -- Use the themes opinionated undercurl styles?
--       cursorline = true, -- Use cursorline highlighting?
--   }
-- })
-- onedarkpro.load()
-- 
-- Neon
-- vim.g.neon_style = "doom" -- default, doom, dark and light
-- vim.g.neon_italic_keyword = false
-- vim.g.neon_italic_function = false
-- vim.g.neon_transparent = false
-- vim.g.neon_bold = false
-- vim.cmd[[colorscheme neon]]

-- From lua
-- local nightfox = require('nightfox')
-- nightfox.setup({
--   fox = 'nordfox', -- nordfox, nightfox, palefox
--   styles = {
--     comments = "italic", -- change style of comments to be italic
--     -- keywords = "bold", -- change style of keywords to be bold
--     -- functions = "italic,bold", -- styles can be a comma separated list
--     strings = "italic"
--   },
--   inverse = {
--     match_paren = true, -- inverse the highlighting of match_parens
--   }
-- })
-- vim.cmd[[colorscheme nordfox]]

-- vim.g.nightflyCursorColor = 1
-- vim.cmd [[colorscheme nightfly]]

-- vim.cmd[[colorscheme monochrome]]

-- Codeschool
-- require('codeschool').setup({
--   plugins = {
--     "buftabline",
--     "gitsigns",
--     "lsp",
--     "lspsaga",
--     "nvimtree",
--     "startify",
--     "telescope",
--     "treesitter"
--   },
--   langs = {
--     "c",
--     "clojure",
--     "coffeescript",
--     "csharp",
--     "css",
--     "elixir",
--     "golang",
--     "haskell",
--     "html",
--     "java",
--     "js",
--     "json",
--     "jsx",
--     "lua",
--     "markdown",
--     "moonscript",
--     "objc",
--     "ocaml",
--     "purescript",
--     "python",
--     "ruby",
--     "rust",
--     "scala",
--     "typescript",
--     "viml",
--     "xml"
--   }
-- })
-- vim.g.codeschool_contrast_dark = "medium" -- soft, medium
-- vim.cmd('colorscheme codeschool')

-- Grubbox flat
-- vim.g.gruvbox_dark_float = true
-- vim.g.gruvbox_dark_sidebar = true
-- vim.g.gruvbox_italic_comments = true
-- vim.g.gruvbox_italic_functions = true
-- vim.g.gruvbox_flat_style = "dark" -- dark, hard
-- vim.cmd('colorscheme gruvbox-flat')

-- Github
-- require("github-theme").setup({
--   theme_style = "dimmed", -- dark, dark_default, dimmed, light, light_default
--   -- sidebars = {"qf", "vista_kind", "terminal", "packer"},
-- })

-- Zenbones
-- vim.o.background = 'light'
-- vim.g.zenbones_lightness = "default" -- bright, default, dim
-- vim.cmd([[colorscheme zenbones]])
-- vim.g.zenflesh_darkness = "stark" -- stark, default, warm
-- vim.cmd([[colorscheme zenflesh]])
-- vim.cmd([[colorscheme nordbones]])

-- VScode
-- vim.g.vscode_style = "dark" -- light
-- vim.cmd[[colorscheme vscode]]

-- Doom One
-- require('doom-one').setup({
--   cursor_coloring = true,
--   terminal_colors = false,
--   italic_comments = true,
--   enable_treesitter = true,
--   transparent_background = false,
--   pumblend = {
--     enable = true,
--     transparency_amount = 20,
--   },
--   plugins_integrations = {
--     neorg = false,
--     barbar = false,
--     bufferline = false,
--     gitgutter = false,
--     gitsigns = true,
--     telescope = false,
--     neogit = false,
--     nvim_tree = true,
--     dashboard = true,
--     startify = false,
--     whichkey = false,
--     indent_blankline = false,
--     vim_illuminate = false,
--     lspsaga = false,
--   },
-- })

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
  augroup END
]])
