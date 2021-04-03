local elixir_ls_path = DATA_PATH .. "/lspinstall/elixir-ls"

require'lspconfig'.elixirls.setup{
	cmd={elixir_ls_path .. "/language_server.sh"};
}
