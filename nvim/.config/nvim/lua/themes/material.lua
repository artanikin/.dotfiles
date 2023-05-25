local colorscheme = "material"

local present = pcall(require, "material")
if not present then
  return
end

vim.g.material_style = "deep ocean"
vim.cmd("colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  " highlight NormalFloat guifg=#D8DEE9 guibg=NONE
  " highlight FloatBorder guifg=#D8DEE9 guibg=NONE
  " highlight LspFloatWinNormal guibg=NONE
  " highlight TelescopeNormal guifg=#d8dee9 guibg=NONE
  highlight DiffAdd     guifg=#c3e88d guibg=NONE gui=NONE cterm=NONE
  highlight DiffChanged guifg=#82aaff guibg=NONE gui=NONE cterm=NONE
  highlight DiffDelete  guifg=#f07178 guibg=NONE gui=NONE cterm=NONE 
  highlight DiffText    guifg=#82aaff guibg=NONE gui=NONE cterm=NONE
]])

-- NORD colors
-- black = "#2E3440", -- nord0 in palette
-- dark_gray = "#3B4252", -- nord1 in palette
-- gray = "#434C5E", -- nord2 in palette
-- light_gray = "#4C566A", -- nord3 in palette
-- light_gray_bright = "#616E88", -- out of palette
-- darkest_white = "#D8DEE9", -- nord4 in palette
-- darker_white = "#E5E9F0", -- nord5 in palette
-- white = "#ECEFF4", -- nord6 in palette
-- teal = "#8FBCBB", -- nord7 in palette
-- off_blue = "#88C0D0", -- nord8 in palette
-- glacier = "#81A1C1", -- nord9 in palette
-- blue = "#5E81AC", -- nord10 in palette
-- red = "#BF616A", -- nord11 in palette
-- orange = "#D08770", -- nord12 in palette
-- yellow = "#EBCB8B", -- nord13 in palette
-- green = "#A3BE8C", -- nord14 in palette
-- purple = "#B48EAD", -- nord15 in palette
-- none = "NONE",
