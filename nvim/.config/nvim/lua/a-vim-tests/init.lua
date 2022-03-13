vim.g['test#strategy'] = "vimux"

vim.g["test#enabled_runners"] = { "ruby#rspec" }
vim.g['test#ruby#bundle_exec'] = 0
vim.g['test#ruby#rspec#executable'] = 'dip rspec'
