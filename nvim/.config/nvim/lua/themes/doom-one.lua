local colorscheme = "doom-one"

--[[ -- Set :terminal colors ]]
--[[ vim.g.doom_one_terminal_colors = true ]]
--[[ -- Enable italic comments ]]
--[[ vim.g.doom_one_italic_comments = true ]]
--[[ -- Enable TS support ]]
--[[ vim.g.doom_one_enable_treesitter = true ]]
--[[ -- Color whole diagnostic text or only underline ]]
--[[ vim.g.doom_one_diagnostics_text_color = true ]]
--[[ -- Enable transparent background ]]
--[[ vim.g.doom_one_transparent_background = true ]]
--[[]]
--[[ -- Pumblend transparency ]]
--[[ vim.g.doom_one_pumblend_enable = true ]]
--[[ vim.g.doom_one_pumblend_transparency = 20 ]]
--[[]]
--[[ -- Plugins integration ]]
--[[ vim.g.doom_one_plugin_neorg = true ]]
--[[ vim.g.doom_one_plugin_barbar = false ]]
--[[ vim.g.doom_one_plugin_telescope = false ]]
--[[ vim.g.doom_one_plugin_neogit = true ]]
--[[ vim.g.doom_one_plugin_nvim_tree = true ]]
--[[ vim.g.doom_one_plugin_dashboard = true ]]
--[[ vim.g.doom_one_plugin_startify = true ]]
--[[ vim.g.doom_one_plugin_whichkey = true ]]
--[[ vim.g.doom_one_plugin_indent_blankline = true ]]
--[[ vim.g.doom_one_plugin_vim_illuminate = true ]]
--[[ vim.g.doom_one_plugin_lspsaga = false ]]

--[[ vim.g.doom_one_italic_comments = true ]]
--[[ vim.g.doom_one_diagnostics_text_color = true ]]
--[[ vim.g.doom_one_enable_treesitter = true ]]
--[[ vim.g.doom_one_diagnostics_text_color = true ]]
--[[ vim.g.doom_one_pumblend_enable = true ]]
--[[ vim.g.doom_one_pumblend_transparency = 20 ]]
--[[ vim.g.doom_one_transparent_background = false ]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


vim.cmd([[
  highlight Normal guifg=#bbc2cf guibg=#282c34
]])

