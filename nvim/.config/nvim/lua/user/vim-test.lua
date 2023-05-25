vim.g['test#strategy'] = "vimux"

vim.g["test#enabled_runners"] = { "ruby#rspec" }
vim.g['test#ruby#bundle_exec'] = 0
--[[ vim.g['test#ruby#rspec#executable'] = 'dip rspec' ]]
vim.g['test#ruby#rspec#executable'] = 'bin/rspec'

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuite<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tv", ":TestVisit<CR>", opts)

