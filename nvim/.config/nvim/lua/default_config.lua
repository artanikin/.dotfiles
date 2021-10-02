local M = {}
M.ui, M.options, M.plugin_status, M.mappings, M.custom = {}, {}, {}, {}, {}

M.mappings.plugin = {
  comment = {
    toggle = "<leader>/",
    toggle_line = "gcc",
    toggle_default = "gc"
  },
  nvimtree = {
    toggle = "<C-n>",
    focus = "<leader>e",
  },
  vim_fugitive = {
    diff_get_2 = "<leader>gh",
    diff_get_3 = "<leader>gl",
    git = "<leader>gs",
    git_blame = "<leader>gb",
  },
  dashboard = {
    bookmarks = "<leader>fm",
    new_file = "<leader>fn", -- basically create a new buffer
    open = "<leader>db", -- open dashboard
    session_load = "<leader>l", -- load a saved session
    session_save = "<leader>s", -- save a session
  }
}

return M
