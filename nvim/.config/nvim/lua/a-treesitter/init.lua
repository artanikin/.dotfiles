local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

ts_config.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
  autopairs = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
