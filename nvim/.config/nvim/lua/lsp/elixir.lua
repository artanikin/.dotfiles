local elixir_ls_path = vim.fn.stdpath("data") .. "/lspinstall/elixir/elixir-ls"

require'lspconfig'.elixirls.setup{
	cmd={elixir_ls_path .. "/language_server.sh"};
}

