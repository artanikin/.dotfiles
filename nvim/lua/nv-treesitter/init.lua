require'nvim-treesitter.configs'.setup {
	ensure_installed = { "css", "erlang", "go", "html", "javascript", "json", "lua", "python", "regex", "ruby", "vue", "yaml" },
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
    rainbow = {enable = true},
    context_commentstring = {enable = true}
}
