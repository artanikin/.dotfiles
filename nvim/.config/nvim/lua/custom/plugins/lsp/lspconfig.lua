return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Lspsaga finder"
      keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>", opts)

      opts.desc = "Show LSP references"
      keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      opts.desc = "Go to declaration"
      -- keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

      opts.desc = "Show LSP definitions"
      -- keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
      keymap.set("n", "gd", vim.lsp.buf.definition, opts)

      opts.desc = "Show LSP implementations"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      opts.desc = "See available code actions"
      -- keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
      keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

      opts.desc = "Run formatting"
      keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)

      opts.desc = "Smart rename"
      -- keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
      keymap.set("n", "<leader>cr", "<cmd>Lspsaga rename<CR>", opts)

      opts.desc = "Show list of diagnostics"
      keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)

      opts.desc = "Show workspace diagnostics"
      keymap.set("n", "<leader>dw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", opts)

      opts.desc = "Show buffer diagnostics"
      -- keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
      keymap.set("n", "<leader>db", "<cmd>Lspsaga show_buf_diagnostics<cr>", opts)

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>do", vim.diagnostic.open_float, opts)

      opts.desc = "Go to previous diagnostic"
      -- keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
      keymap.set("n", "<leader>dk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

      opts.desc = "Go to next diagnostic"
      -- keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
      keymap.set("n", "<leader>dj", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

      opts.desc = "Show documentation for what is under cursor"
      -- keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
      keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

      opts.desc = "Peek definition"
      keymap.set("n", "<leader>ld", "<cmd>Lspsaga peek_definition<CR>", opts)

      opts.desc = "Outline"
      keymap.set("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", opts)
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- configure html server
    lspconfig["gopls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure typescript server with plugin
    lspconfig["solargraph"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
    })

    -- configure css server
    lspconfig["jsonls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}
