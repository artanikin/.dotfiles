local g = vim.g

g.dashboard_disable_at_vimenter = 0
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "fzf"
g.dashboard_custom_header = {
  "",
  "",
  "",
  ""
}

g.dashboard_custom_section = {
   -- a = { description = { "  Find File                 SPC f f" }, command = "Files" },
   -- b = { description = { "  Recents                   SPC f o" }, command = "History" },
   -- c = { description = { "  Find Word                 SPC f w" }, command = "Rg" },
   -- d = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
   -- e = { description = { "  Bookmarks                 SPC b m" }, command = "Marks" },
   -- f = { description = { "  Load Last Session         SPC l  " }, command = "SessionLoad" },
   -- g = { description = { "  Config Files              SPC f v" }, command = "Files $HOME/.config/nvim" },
   -- h = { description = { "  Colors                    SPC f c" }, command = "Colors" },
   -- m = { description = { "                                    " }, command = "" },
   -- x = { description = { "  Update Plugins                   " }, command = "PackerUpdate" },
   -- y = { description = { "祥 Startup Time                     " }, command = "StartupTime"},
   -- z = { description = { "  Exit                             " }, command = "q"}
   a = { description = { "  Find File                 SPC f f" }, command = "lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))" },
   b = { description = { "  Recents                   SPC f o" }, command = "lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))" },
   c = { description = { "  Find Word                 SPC f w" }, command = "lua require'telescope.builtin'.live_grep()" },
   d = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
   e = { description = { "  Bookmarks                 SPC b m" }, command = "lua require'telescope.builtin'.marks()" },
   f = { description = { "  Load Last Session         SPC l  " }, command = "SessionLoad" },
   g = { description = { "  Config Files              SPC f v" }, command = "lua require'user.telescope'.search_dotfiles()" },
   h = { description = { "  Colors                    SPC f c" }, command = "lua require'telescope.builtin'.colorscheme()" },
   m = { description = { "                                    " }, command = "" },
   x = { description = { "  Update Plugins                   " }, command = "PackerUpdate" },
   y = { description = { "祥 Startup Time                     " }, command = "StartupTime"},
   z = { description = { "  Exit                             " }, command = "q"}
}

g.dashboard_custom_footer = {
   "   ",
}
