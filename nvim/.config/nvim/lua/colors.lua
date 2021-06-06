vim.g.gruvbox_invert_selection=0
vim.g.gruvbox_italic=1
vim.cmd('colorscheme gruvbox')

vim.cmd([[
  " highlight CursorLineNR guibg=None
  " highlight Normal guibg=none
  " highlight LineNr guifg=#5eacd3
  " highlight netrwDir guifg=#5eacd3
  " highlight qfFileName guifg=#aed75f
  " highlight TelescopeBorder guifg=#5eacd
  " highlight! link SignColumn LineNr
  " highlight! link ColorColumn CursorLine
]])

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
  augroup END
]])
