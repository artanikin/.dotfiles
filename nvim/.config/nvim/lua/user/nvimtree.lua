local present, nvimtree = pcall(require, "nvim-tree")

if not present then
   return
end

vim.o.termguicolors = true

-- vim.g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
-- vim.g.nvim_tree_git_hl = 0
-- vim.g.nvim_tree_gitignore = 0
-- vim.g.nvim_tree_hide_dotfiles = 0
-- vim.g.nvim_tree_highlight_opened_files = 0
-- vim.g.nvim_tree_indent_markers = 1
-- vim.g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
-- vim.g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
-- vim.g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }
--
-- vim.g.nvim_tree_show_icons = {
--    folders = 1,
--    folder_arrows= 1,
--    files = 1,
--    git = 1
-- }

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

vim.g.nvim_tree_icons = {
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
}

nvimtree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = { "dashboard", "startify", "alpha" },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  open_on_setup = true,
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true
  },
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
    allow_resize = true,
    side = "left",
    width = 30,
    height = 30,
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
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":t",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30
  }
}
