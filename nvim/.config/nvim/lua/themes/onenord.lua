local colorscheme = "onenord"

require('onenord').setup({
  theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- Style that is applied to various groups: see `highlight-args` for options
  styles = {
    comments = "italic",
    strings = "italic",
    diagnostics = "undercurl",
  },
  disable = {
    background = true, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = false, -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = false,
  },
  -- custom_highlights = {
  --   NormalFloat = { fg="#D8DEE9", bg=nil },
  --   FloatBorder = { fg="#D8DEE9", bg=nil },
  --   LspFloatWinNormal = { bg=nil },
  -- }, -- Overwrite default highlight groups
  -- custom_colors = {}, -- Overwrite default colors
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
  " Change colors for Float window
  highlight TelescopeNormal guifg=#C8D0E0 guibg=NONE
  highlight NormalFloat guifg=#D8DEE9 guibg=NONE
  highlight FloatBorder guifg=#D8DEE9 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
]])

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
