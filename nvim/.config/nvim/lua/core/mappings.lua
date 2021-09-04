local utils = require "core.utils"

local config = utils.load_config()
local map = utils.map

local maps = config.mappings
local plugin_maps = maps.plugin

local cmd = vim.cmd

local M = {}

M.nvimtree = function()
  local m = plugin_maps.nvimtree

  map("n", m.toggle, ":NvimTreeToggle <CR>")
  map("n", m.focus, ":NvimTreeFocus <CR>")
end

M.comment = function()
  local m = plugin_maps.comment

  map("n", m.toggle, ":CommentToggle<CR>")
  map("v", m.toggle, ":CommentToggle<CR>")
  map("n", m.toggle_line, ":CommentToggle<CR>g@l")
  map("n", m.toggle_default, ":CommentToggle<CR>g@")
  map("v", m.toggle_default, ":CommentToggle<CR>")
end

M.vim_fugitive = function()
   local m = plugin_maps.vim_fugitive

   map("n", m.git, ":Git <CR>")
   map("n", m.git_blame, ":Git blame <CR>")
   map("n", m.diff_get_2, ":diffget //2 <CR>")
   map("n", m.diff_get_3, ":diffget //3 <CR>")
end

return M
