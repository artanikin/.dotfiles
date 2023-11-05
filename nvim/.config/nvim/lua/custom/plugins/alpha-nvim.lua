return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                                     ",
      "                                                     ",
      "                                                     ",
      "                                                     ",
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
      "                                                     ",
      "                                                     ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "󰮗  Find file", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ layout_config={ width=0.6, height=0.4 }, winblend = 9, previewer = false}))<cr>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("g", "  Git status files", "<cmd>lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"),
      dashboard.button("o", "󰈚  Recently used files", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"),
      dashboard.button("w", "󰈭  Find word", "<cmd>lua require'user.telescope'.live_grep()<cr>"),
      dashboard.button("m", "  Bookmarks", ":lua require'telescope.builtin'.marks() <CR>"),
      dashboard.button("c", "  Colors", ":lua require'telescope.builtin'.colorscheme(require('telescope.themes').get_dropdown({ previewer = false })) <CR>"),
      dashboard.button("v", "  Configuration", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ dotfiles ~', cwd = '~/.config/nvim/', shorten_path = false, previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>"),
      dashboard.button("u", "  Plugin Managing", ":Lazy<CR>"),
      dashboard.button("t", "󱎫  Startup Time", ":StartupTime<CR>"),
      dashboard.button("q", "󰗼  Quit Neovim", ":qa<CR>"),
    }

    local function footer()
      return "Good Luck 💪"
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
