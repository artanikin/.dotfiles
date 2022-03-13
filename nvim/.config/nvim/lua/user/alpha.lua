local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("o", "  Recently used files", ":lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false })) <CR>"),
	dashboard.button("w", "  Find text", ":lua require'telescope.builtin'.live_grep() <CR>"),
  dashboard.button("m", "  Bookmarks", ":lua require'telescope.builtin'.marks() <CR>"),
  dashboard.button("c", "  Colors", ":lua require'telescope.builtin'.colorscheme(require('telescope.themes').get_dropdown({ previewer = false })) <CR>"),
	dashboard.button("v", "  Configuration", ":lua require'user.telescope'.search_dotfiles() <CR>"),
  dashboard.button("u", "  Update Plugins", ":PackerUpdate<CR>"),
  dashboard.button("t", "祥 Startup Time", ":StartupTime<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
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
