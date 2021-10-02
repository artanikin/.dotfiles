-- Gruvbox
-- vim.g.gruvbox_invert_selection=0
-- vim.g.gruvbox_italic=1
-- vim.g.gruvbox_contrast_dark="hard" -- hard, medium, soft
-- vim.g.gruvbox_sign_column="bg0"
-- vim.cmd('colorscheme gruvbox')

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
-- vim.g.onedark_style = 'darker' -- dark, darker, cool, deep, warm, warmer
-- vim.cmd[[colorscheme onedark]]

-- Neon
-- vim.g.neon_style = "dark" -- default, doom, dark and light
-- vim.g.neon_italic_keyword = false
-- vim.g.neon_italic_function = false
-- vim.g.neon_transparent = false
-- vim.g.neon_bold = false
-- vim.cmd[[colorscheme neon]]

-- From lua
local nightfox = require('nightfox')
nightfox.setup({
  fox = 'nordfox', -- nordfox, nightfox, palefox
  styles = {
    comments = "italic", -- change style of comments to be italic
    -- keywords = "bold", -- change style of keywords to be bold
    -- functions = "italic,bold", -- styles can be a comma separated list
    strings = "italic"
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
  }
})
vim.cmd[[colorscheme nordfox]]

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
--   theme_style = "dark", -- dark, dark_default, dimmed, light, light_default
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},
-- })

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
  augroup END
]])
