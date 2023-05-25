local present, nvimtree = pcall(require, "nvim-tree")

if not present then
   return
end

vim.o.termguicolors = true

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvimtree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = { "dashboard", "startify", "alpha" },
  open_on_tab = false,
  hijack_cursor = false,
  open_on_setup = true,
  update_cwd = true,
  -- update_to_buf_dir = {
  --   enable = true,
  --   auto_open = true
  -- },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500
  },
  view = {
    side = "left",
    adaptive_size = true,
    hide_root_folder = false,
    number = false,
    relativenumber = false,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = { enable = true },
    },
  },
  renderer = {
    root_folder_modifier = ":t",
    highlight_git = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          deleted = "",
          ignored = "◌",
          renamed = "➜",
          staged = "✓",
          unmerged = "",
          unstaged = "✗",
          untracked = "★",
        },
        folder = {
          default = "",
          empty = "", -- 
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
        },
      },
    },
  },
}
