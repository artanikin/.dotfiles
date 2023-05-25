local colorscheme = "gruvbox"

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = false,
  strikethrough = true,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  highlight GruvboxRedSign guifg=#fb4934 guibg=NONE
  highlight GruvboxGreenSign guifg=#b8bb26 guibg=NONE
  highlight GruvboxYellowSign guifg=#fabd2f guibg=NONE
  highlight GruvboxBlueSign guifg=#83a598 guibg=NONE
  highlight GruvboxOrangeSign guifg=#fe8019 guibg=NONE
  highlight GruvboxAquaSign guifg=#8ec07c guibg=NONE
  highlight GruvboxPurpleSign guifg=#d3869b guibg=NONE
  highlight NormalFloat guifg=#D8DEE9 guibg=NONE
  highlight FloatBorder guifg=#ebdbb2 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
