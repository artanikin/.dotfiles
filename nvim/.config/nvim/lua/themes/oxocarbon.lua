local colorscheme = "oxocarbon"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  " highlight NormalFloat guifg=#D8DEE9 guibg=NONE
  " highlight FloatBorder guifg=#D8DEE9 guibg=NONE
  " highlight LspFloatWinNormal guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
