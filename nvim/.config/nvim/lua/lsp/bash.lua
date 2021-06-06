-- npm i -g bash-language-server
require'lspconfig'.bashls.setup {
    cmd = {vim.fn.stdpath("data") .. "/lspinstall/bash/node_modules/.bin/bash-language-server", "start"},
    on_attach = require'lsp'.common_on_attach
}
