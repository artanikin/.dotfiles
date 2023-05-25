local colorscheme = "gruvbox-baby"

vim.g.gruvbox_baby_telescope_theme = 0
vim.g.gruvbox_baby_comment_style = "italic"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_background_color = "dark" -- dark, medium
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.gruvbox_baby_use_original_palette = 0

vim.g.gruvbox_baby_highlights = {
    NormalFloat = { fg = "#ebdbb2", bg = "NONE" },
    FloatBorder = { fg = "#ebdbb2", bg = "NONE" },
    CmpItemMenu = { fg = "#665c54", bg = nil },
    CmpItemMenuDefault = { fg = "#ebdbb2", bg = nil },
    Pmenu = { fg = "#ebdbb2", guibg = nil },
    QuickFixLine = { bg="#32302f" },
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
