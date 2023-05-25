local ok, harpoon = pcall(require, "harpoon")
if not ok then
  return
end

harpoon.setup({
  menu = {
    width = vim.api.nvim_win_get_width(0) - 60,
  },
})

vim.keymap.set("n", "<leader>hm", require("harpoon.mark").add_file, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hl", require("harpoon.ui").toggle_quick_menu, { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", require("harpoon.ui").nav_next, { noremap = true, silent = true })
vim.keymap.set("n", "<C-p>", require("harpoon.ui").nav_prev, { noremap = true, silent = true })

for i = 1, 5 do
  vim.keymap.set(
    "n",
    string.format("<space>%s", i),
    function()
      require("harpoon.ui").nav_file(i)
    end,
    { noremap = true, silent = true }
  )
end
