local colorscheme = "onedark"

vim.g.transparent_background = false
vim.g.italic_comments = false
vim.g.italic_keywords = false
vim.g.italic_functions = false
vim.g.italic_variables = false

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

--[[ vim.cmd([[ ]]
--[[   hi! link Listchar Comment ]]
--[[ ) ]]
