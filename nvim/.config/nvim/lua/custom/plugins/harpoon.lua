return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require('harpoon').setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 60,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>hl", require("harpoon.ui").toggle_quick_menu, { desc = "List of harpoon marks", noremap = true, silent = true })
    keymap.set("n", "<leader>hm", require("harpoon.mark").add_file,        { desc = "Mark file with harpoon", noremap = true, silent = true })
    keymap.set("n", "<leader>hn", require('harpoon.ui').nav_next,          { desc = "Go to next harpoon mark", noremap = true, silent = true })
    keymap.set("n", "<leader>hp", require('harpoon.ui').nav_prev,          { desc = "Go to previous harpoon mark", noremap = true, silent = true })
  end,
}
