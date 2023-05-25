local colorscheme = "poimandres"

require('poimandres').setup({
  bold_vert_split = true,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = true,
  disable_italics = false,
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

