local colorscheme = "onedark"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

require(colorscheme).setup {
  style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },
  lualine = {
      transparent = true, -- lualine center bar transparency
  },
}
require(colorscheme).load()

vim.cmd([[
  " Change colors for Float window
  highlight NormalFloat guifg=#abb2bf guibg=NONE
  highlight FloatBorder guifg=#5c6370 guibg=NONE
  highlight LspFloatWinNormal guibg=NONE
]])
