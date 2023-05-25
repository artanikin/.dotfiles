local colorscheme = "rasmus"

vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_enable_sidebar_background = false

vim.g.rasmus_italic_keywords = true
vim.g.rasmus_italic_functions = false
vim.g.rasmus_bold_keywords = true
vim.g.rasmus_bold_functions = true
vim.g.rasmus_transparent = true
vim.g.rasmus_variant = "dark" -- monochrome, dark


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  highlight NormalFloat guifg=#D1D1D1 guibg=NONE
  highlight FloatBorder guifg=#D1D1D1 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
