local status_ok, gonvim = pcall(require, "go")
if not status_ok then
	return
end

gonvim.setup()

-- Run gofmt + goimport on save
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    -- run gofmt + goimport after save
    require('go.format').goimport()
  end
})
