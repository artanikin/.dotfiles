local colorscheme = "catppuccin"

require("catppuccin").setup({
  transparent_background = true,
  compile = {
    enabled = true,
    path = vim.fn.stdpath "cache" .. "/catppuccin"
  },
  dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.05,
	},
  styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "italic" },
		keywords = {},
		strings = { "italic" },
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
  integrations = {
    gitsigns = true,
    lsp_saga = true,
    cmp = true,
    nvimtree = true,
    treesitter_context = true,
    treesitter = true,
    ts_rainbow = true,
    symbols_outline = false,
    telescope = true,
    native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
  },
})

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  highlight NormalFloat guifg=#89b4fa guibg=NONE
  highlight FloatBorder guifg=#89b4fa guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
  highlight TelescopeNormal guifg=#89b4fa guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
