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
}

return M
