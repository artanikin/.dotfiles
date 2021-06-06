vim.g.gruvbox_invert_selection=0
vim.g.gruvbox_italic=1
vim.g.gruvbox_contrast_dark="hard"
vim.g.gruvbox_sign_column="bg0"
vim.cmd('colorscheme gruvbox')

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
  augroup END
]])
