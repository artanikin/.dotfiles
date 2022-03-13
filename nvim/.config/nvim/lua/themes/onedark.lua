local colorscheme = "onedark"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

require(colorscheme).setup {
  style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'italic',
    variables = 'none'
  },
}
require(colorscheme).load()
