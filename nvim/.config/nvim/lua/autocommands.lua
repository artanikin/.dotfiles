vim.cmd [[
  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
    autocmd FileType gitcommit setlocal spelllang=en_us,ru
  augroup end
  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
    autocmd FileType markdown setlocal spelllang=en_us,ru
  augroup end
  augroup _startuptime
    autocmd!
    autocmd FileType startuptime nnoremap <silent> <buffer> q :bdelete<CR>:Alpha<CR>
  augroup end
]]

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf,help,man,lspinfo,fugitive,null-ls-info,checkhealth,lspsagaoutline",
  callback = function()
    vim.keymap.set("n", "q", function() vim.api.nvim_win_close(0, false) end)
  end
})

vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    require('vim.highlight').on_yank({
      higroup = 'IncSearch',
      timeout = 100
    })
  end
})

vim.api.nvim_create_autocmd("VimResized", {
  pattern = "*",
  callback = function()
    vim.api.nvim_command(' wincmd =')
  end
})
