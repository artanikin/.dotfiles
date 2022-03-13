local colorscheme = "catppuccin"

local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup({
  transparent_background = true,
  ts_rainbow = true,
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "NONE",
    strings = "italic",
    variables = "NONE",
  },
  nvimtree = {
    transparent_panel = true,
  }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
