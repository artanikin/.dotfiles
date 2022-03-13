local utils = require "core.utils"

local config = utils.load_config()
local map = utils.map

local maps = config.mappings
local plugin_maps = maps.plugin

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

M.dashboard = function()
  local m = plugin_maps.dashboard

  map("n", m.bookmarks, ":DashboardJumpMarks <CR>")
  map("n", m.new_file, ":DashboardNewFile <CR>")
  map("n", m.open, ":Dashboard <CR>")
  map("n", m.session_load, ":SessionLoad <CR>")
  map("n", m.session_save, ":SessionSave <CR>")
end

M.tests = function()
  local m = plugin_maps.tests

  map("n", m.test_nearest, ":TestNearest<CR>")
  map("n", m.test_file, ":TestFile<CR>")
  map("n", m.test_suite, ":TestSuite<CR>")
  map("n", m.test_last, ":TestLast<CR>")
  map("n", m.test_visist, ":TestVisit<CR>")
end

M.gitlinker = function()
  local m = plugin_maps.gitlinker

  map("n", m.normap_open_in_browser, '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>')
  map("v", m.visual_open_in_browser, '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>')
end

return M
