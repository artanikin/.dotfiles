local colorscheme = "adwaita"

--[[ vim.g.adwaita_mode = "light" ]]
vim.o.background = 'light'
vim.g.adwaita_darker = true
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

