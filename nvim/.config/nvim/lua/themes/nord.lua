local colorscheme = "nord"

vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_enable_sidebar_background = false
vim.g.nord_uniform_diff_background = true


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  highlight NormalFloat guifg=#D8DEE9 guibg=NONE
  highlight FloatBorder guifg=#D8DEE9 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
  highlight TelescopeNormal guifg=#d8dee9 guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

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
