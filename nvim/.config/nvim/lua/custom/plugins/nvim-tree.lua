return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
    -- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    -- configure nvim-tree
    nvimtree.setup({
      filters = {
        dotfiles = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      diagnostics = {
        enable = true,
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500
      },
      filesystem_watchers = {
        enable = true,
      },
      view = {
        adaptive_size = false,
        side = "left",
        width = 40,
        preserve_window_proportions = true,
        --[[ hide_root_folder = false, ]]
        --[[ number = false, ]]
        --[[ relativenumber = false, ]]
        -- mappings = {
        --   custom_only = false,
        --   list = {
        --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        --     { key = "h", cb = tree_cb "close_node" },
        --     { key = "v", cb = tree_cb "vsplit" },
        --   },
        -- },
        float = {
          enable = false,
        },
      },
      actions = {
        open_file = {
          resize_window = true,
          quit_on_open = true,
          window_picker = { enable = true },
        },
      },
      renderer = {
        --[[ root_folder_label = false, ]]
        highlight_git = true,
        highlight_opened_files = "none",
        indent_markers = {
          enable = false
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<Leader>p', ":execute 'NvimTreeToggle' | wincmd =<CR>", { desc = "Toggle file explorer", silent = true })

    -- keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end,
}
