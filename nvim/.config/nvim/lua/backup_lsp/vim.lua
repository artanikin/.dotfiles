-- npm install -g vim-language-server
require'lspconfig'.vimls.setup {
    cmd = {vim.fn.stdpath("data") .. "/lspinstall/vim/node_modules/.bin/vim-language-server", "--stdio"},
    on_attach = require'lsp'.common_on_attach
}
