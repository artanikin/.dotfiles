local colorscheme = "tokyonight"

require("tokyonight").setup({
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night`, `moon` and `day`
  transparent = true,
  terminal_colors = false,
  styles = {
    comments = "italic",
    keywords = "italic",
    functions = "italic",
    variables = "NONE",
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "qf", "help", "terminal", "packer" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = true, -- dims inactive windows
})
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  highlight NormalFloat guifg=#c0caf5 guibg=NONE
  highlight FloatBorder guifg=#3d59a1 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
