require'lspconfig'.solargraph.setup{
  on_attach = require'lsp'.common_on_attach,
  root_dir = require('lspconfig/util').root_pattern("Gemfile", ".git", ".")
}
