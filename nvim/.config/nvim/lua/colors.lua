-- Gruvbox
-- vim.g.gruvbox_invert_selection=0
-- vim.g.gruvbox_italic=1
-- vim.g.gruvbox_contrast_dark="medium" -- hard, medium, soft
-- vim.g.gruvbox_sign_column="bg0"
-- vim.cmd('colorscheme gruvbox')

-- Tokyonight
vim.g.tokyonight_style = "night" -- "storm, night, light"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.cmd[[colorscheme tokyonight]]

-- OneDark
-- vim.g.onedark_style = 'darker' -- darker, cool, deep, warm, warmer
-- vim.cmd[[colorscheme onedark]]

-- Nord
-- vim.g.nord_contrast = false
-- vim.g.nord_borders = true
-- vim.g.nord_disable_background = false
-- vim.g.nord_cursorline_transparent = true
-- require('nord').set()

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
  augroup END
]])
