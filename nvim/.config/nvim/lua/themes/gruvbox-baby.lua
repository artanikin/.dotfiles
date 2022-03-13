local colorscheme = "gruvbox-baby"

vim.g.gruvbox_baby_comment_style = "italic"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_background_color = "dark" -- dark, medium
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
