local saga = require("lspsaga")
saga.setup({
  ui = {
    theme = 'round',
    border = 'rounded',
    winblend = 0,
  },
  symbol_in_winbar = {
    enable = true,
    separator = '  ',
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
  },
  --[[ border_style = "rounded", ]]
  --[[ saga_winblend = 10, ]]
  --[[ --[[ code_action_icon = " ",     -- "💡" ]]
  --[[ symbol_in_winbar = { ]]
  --[[   in_custom = false, ]]
  --[[   enable = false, ]]
  --[[   separator = ' ', ]]
  --[[   show_file = true, ]]
  --[[   click_support = true, ]]
  --[[ }, ]]
})
-- Example:
--[[ local function get_file_name(include_path) ]]
--[[     local file_name = require('lspsaga.symbolwinbar').get_file_name() ]]
--[[     if vim.fn.bufname '%' == '' then return '' end ]]
--[[     if include_path == false then return file_name end ]]
--[[     -- Else if include path: ./lsp/saga.lua -> lsp > saga.lua ]]
--[[     local sep = vim.loop.os_uname().sysname == 'Windows' and '\\' or '/' ]]
--[[     local path_list = vim.split(string.gsub(vim.fn.expand '%:~:.:h', '%%', ''), sep) ]]
--[[     local file_path = '' ]]
--[[     for _, cur in ipairs(path_list) do ]]
--[[         file_path = (cur == '.' or cur == '~') and '' or ]]
--[[                     file_path .. cur .. ' ' .. '%#LspSagaWinbarSep#>%*' .. ' %*' ]]
--[[     end ]]
--[[     return file_path .. file_name ]]
--[[ end ]]

--[[ local function config_winbar_or_statusline() ]]
--[[     local exclude = { ]]
--[[         ['teminal'] = true, ]]
--[[         ['toggleterm'] = true, ]]
--[[         ['prompt'] = true, ]]
--[[         ['NvimTree'] = true, ]]
--[[         ['help'] = true, ]]
--[[     } -- Ignore float windows and exclude filetype ]]
--[[     if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then ]]
--[[         vim.wo.winbar = '' ]]
--[[     else ]]
--[[         local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar') ]]
--[[         local sym ]]
--[[         if ok then sym = lspsaga.get_symbol_node() end ]]
--[[         local win_val = '' ]]
--[[         win_val = get_file_name(true) -- set to true to include path ]]
--[[         if sym ~= nil then win_val = win_val .. sym end ]]
--[[         vim.wo.winbar = win_val ]]
--[[         -- if work in statusline ]]
        --[[ vim.wo.stl = win_val ]]
--[[     end ]]
--[[ end ]]
--[[ local events = { 'BufEnter', 'BufWinEnter', 'CursorMoved' } ]]

--[[ vim.api.nvim_create_autocmd(events, { ]]
--[[     pattern = '*', ]]
--[[     callback = function() config_winbar_or_statusline() end, ]]
--[[ }) ]]
--[[]]
--[[ vim.api.nvim_create_autocmd('User', { ]]
--[[     pattern = 'LspsagaUpdateSymbol', ]]
--[[     callback = function() config_winbar_or_statusline() end, ]]
--[[ }) ]]
