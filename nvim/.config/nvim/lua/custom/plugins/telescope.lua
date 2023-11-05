return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff",
      "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ layout_config={ width=0.6, height=0.4 }, winblend = 9, previewer = false}))<cr>",
      { desc = "Fuzzy find files in project" }
    )
    keymap.set("n", "<Leader>fw",
      "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy({ layout_config={ width=0.6, height=0.4 }, winblend = 9, shorten_path = true, previewer = true }))<cr>",
      { desc = "Find string in project" }
    )
    keymap.set("n", "<leader>fo",
      "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
      { desc = "Find old files" }
    )
    keymap.set("n", "<Leader>fb",
      "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({ previewer = false, shorten_path = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>",
      { desc = "List open buffers" }
    )
    keymap.set("n", "<Leader>fm", "<cmd>lua require'telescope.builtin'.marks()<cr>", { desc = "List of marks" })
    keymap.set("n", "<Leader>fv",
      "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ dotfiles ~', cwd = '~/.config/nvim/', shorten_path = false, previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>",
      { desc = "Fuzzy find dotfiltes" }
    )
    keymap.set("n", "<Leader>ft", "<cmd>lua require'telescope.builtin'.tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", { desc = "List of tags" })
    keymap.set("n", "<Leader>fg", "<cmd>lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", { desc = "List of uncommitted files" })
    keymap.set("n", "<Leader>fh", "<cmd>lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", { desc = "Find help tags" })
    keymap.set("n", "<Leader>fl",
      "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ winblend = 10, border = true, previewer = false, shorten_path = false, layout_config={ width=0.6, height=0.4 } }))<cr>",
      { desc = "Find line in current buffer" }
    )
    keymap.set("n", "<Leader>fi", "<cmd>lua require('telescope.builtin').find_files({ find_command = { 'rg', '--no-ignore', '--files' } })<cr>", { desc = "Find files with gitignored" })
    keymap.set("n", "<Leader>fa",
      "<cmd>lua require('telescope.builtin').grep_string(require('telescope.themes').get_ivy({ layout_config={ width=0.6, height=0.4 }, winblend = 9, shorten_path = true, previewer = true }))<cr>",
      { desc = "Find word under curcor in project" }
    )
    keymap.set("n", "<Leader>fz", "<cmd>lua require('telescope.builtin').find_files({ find_command = { 'rg', '--files', '--type', vim.fn.input 'Type: ' } })<cr>",
      { desc = "Find files with custom type" }
    )
    keymap.set("n", "<Leader>fs", "<cmd>lua require'telescope.builtin'.lsp_document_symbols({ symbol_width=100 })<cr>", { desc = "Find symbols in buffer" })

    keymap.set("n", "<Leader>fM", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ Rails Models ~', cwd = 'app/models/', previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>", {})
    keymap.set("n", "<Leader>fC", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ Rails Controllers ~', cwd = 'app/controllers/', previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>", {})
    keymap.set("n", "<Leader>fV", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ Rails Views ~', cwd = 'app/views', previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>", {})
    keymap.set("n", "<Leader>fT", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ prompt_title = '~ Rails Specs ~', cwd = 'app/specs', previewer = false, layout_config={ width=0.6, height=0.4 }, winblend = 9 }))<cr>", {})
  end,
}
