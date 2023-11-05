return {
  "vim-test/vim-test",
  dependencies = { "benmills/vimux" },
  lazy = true,
  keys = { "<leader>tn", "<leader>tf", "<leader>ts", "<leader>tl", "<leader>tv" },
  cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
  config = function()
    vim.g['test#strategy'] = "vimux"

    vim.g["test#enabled_runners"] = { "ruby#rspec", "go#gotest" }
    vim.g['test#ruby#bundle_exec'] = 0
    --[[ vim.g['test#ruby#rspec#executable'] = 'dip rspec' ]]
    vim.g['test#ruby#rspec#executable'] = 'bin/rspec'

    vim.g['test#go#gotest#test_options'] = {
      file = { ' -v' },
      nearest = { ' -v' },
    }

    local opts = { noremap = true, silent = true }

    vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<cr>", opts)
    vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<cr>", opts)
    vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuite<cr>", opts)
    vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<cr>", opts)
    vim.api.nvim_set_keymap("n", "<leader>tv", ":TestVisit<cr>", opts)
  end,
}
