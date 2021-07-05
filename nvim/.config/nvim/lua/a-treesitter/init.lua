require'nvim-treesitter.configs'.setup {
  ensure_installed = { "css", "erlang", "elixir", "go", "html", "javascript", "json", "lua", "python", "regex", "ruby", "vue", "yaml" },
  highlight = {
    enable = true -- false will disable the whole extension
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },
  autotag = {enable = true},
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
