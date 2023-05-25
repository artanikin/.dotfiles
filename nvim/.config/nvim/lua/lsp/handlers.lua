local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities = cmp_nvim_lsp.default_capabilities(M.capabilities)

M.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    virtual_text = true,
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

local function lsp_highlight_document(client)
  if client.server_capabilities.documentHighlightProvider then
    vim.cmd [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
  end
end

local function lsp_keymaps()
  local opts = {
    buffer = 0, -- `0` means that add mappings only for current buffer
  }
  --[[ vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) ]]
  vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)
  --[[ vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) ]]
  vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", opts)
  vim.keymap.set("n", "<leader>cr", "<cmd>Lspsaga rename<CR>", opts)
  --[[ vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts) ]]
  --[[ vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts) ]]
  vim.keymap.set("n", "<leader>sd", "<cmd>Lspsaga preview_definition<CR>", opts)
  --[[ vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts) ]]
  --[[ vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts) ]]
  vim.keymap.set("n", "<leader>dj", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  vim.keymap.set("n", "<leader>dk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, opts)
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
end

M.on_attach = function(client, _)
  if client.name == "tsserver" then
    client.server_capabilities.document_formatting = false
  end

  lsp_keymaps()
  lsp_highlight_document(client)
end

return M
