vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F1>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>bm", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>BM", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
--[[ vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>") ]]
vim.keymap.set("n", "<leader>dr", ":lua require('dapui').open()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require('dap-go').debug_test()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require('dapui').close()<CR>")

local has_dap, dap = pcall(require, "dap")
if not has_dap then
  return
end

dap.set_log_level "TRACE"

-- TODO: How does terminal work?
dap.defaults.fallback.external_terminal = {
    command = "/usr/local/bin/kitty",
    args = { "-e" },
}

--  https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#go-using-delve-directly
dap.adapters.go = function(callback, _)
  local stdout = vim.loop.new_pipe(false)
  local handle, pid_or_err
  local port = 38697

  handle, pid_or_err = vim.loop.spawn("dlv", {
          stdio = { nil, stdout },
          args = { "dap", "-l", "127.0.0.1:" .. port },
          detached = true,
      }, function(code)
        stdout:close()
        handle:close()

        print("[delve] Exit Code:", code)
      end)

  assert(handle, "Error running dlv: " .. tostring(pid_or_err))

  stdout:read_start(function(err, chunk)
    assert(not err, err)

    if chunk then
      vim.schedule(function()
        require("dap.repl").append(chunk)
        print("[delve]", chunk)
      end)
    end
  end)

  -- Wait for delve to start
  vim.defer_fn(function()
    callback { type = "server", host = "127.0.0.1", port = port }
  end, 100)
end

dap.configurations.go = {
    {
        type = "go",
        name = "Debug (from vscode-go)",
        request = "launch",
        showLog = false,
        program = "${file}",
        dlvToolPath = vim.fn.exepath "dlv", -- Adjust to where delve is installed
    },
    {
        type = "go",
        name = "Debug (No File)",
        request = "launch",
        program = "",
    },
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}",
        showLog = true,
        -- console = "externalTerminal",
        -- dlvToolPath = vim.fn.exepath "dlv",
    },
    {
        name = "Test Current File",
        type = "go",
        request = "launch",
        showLog = true,
        mode = "test",
        program = ".",
        dlvToolPath = vim.fn.exepath "dlv",
    },
    --[[ { ]]
    --[[   type = "go", ]]
    --[[   name = "Run lsif-clang indexer", ]]
    --[[   request = "launch", ]]
    --[[   showLog = true, ]]
    --[[   program = ".", ]]
    --[[   args = { ]]
    --[[     "--indexer", ]]
    --[[     "lsif-clang compile_commands.json", ]]
    --[[     "--dir", ]]
    --[[     vim.fn.expand "~/sourcegraph/lsif-clang/functionaltest", ]]
    --[[     "--debug", ]]
    --[[   }, ]]
    --[[   dlvToolPath = vim.fn.exepath "dlv", ]]
    --[[ }, ]]
    --[[ { ]]
    --[[   type = "go", ]]
    --[[   name = "Run lsif-go-imports in smol_go", ]]
    --[[   request = "launch", ]]
    --[[   showLog = true, ]]
    --[[   program = "./cmd/lsif-go", ]]
    --[[   args = { ]]
    --[[     "--project-root=/home/tjdevries/sourcegraph/smol_go/", ]]
    --[[     "--repository-root=/home/tjdevries/sourcegraph/smol_go/", ]]
    --[[     "--module-root=/home/tjdevries/sourcegraph/smol_go/", ]]
    --[[     "--repository-remote=github.com/tjdevries/smol_go", ]]
    --[[     "--no-animation", ]]
    --[[   }, ]]
    --[[   dlvToolPath = vim.fn.exepath "dlv", ]]
    --[[ }, ]]
    --[[ { ]]
    --[[   type = "go", ]]
    --[[   name = "Run lsif-go-imports in sourcegraph", ]]
    --[[   request = "launch", ]]
    --[[   showLog = true, ]]
    --[[   program = "./cmd/lsif-go", ]]
    --[[   args = { ]]
    --[[     "--project-root=/home/tjdevries/sourcegraph/sourcegraph.git/main", ]]
    --[[     "--repository-root=/home/tjdevries/sourcegraph/sourcegraph.git/main", ]]
    --[[     "--module-root=/home/tjdevries/sourcegraph/sourcegraph.git/main", ]]
    --[[     "--no-animation", ]]
    --[[   }, ]]
    --[[   dlvToolPath = vim.fn.exepath "dlv", ]]
    --[[ }, ]]
}

vim.g.dap_virtual_text = true

require("nvim-dap-virtual-text").setup()
require("dapui").setup()
require('dap-go').setup()

local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


--[[ local dap = require("dap") ]]
--[[ local dapui = require("dapui") ]]
--[[ local daptext = require("nvim-dap-virtual-text") ]]
--[[]]
--[[ local remap = require("theprimeagen.keymap") ]]
--[[ local nnoremap = remap.nnoremap ]]
--[[]]
--[[ daptext.setup() ]]
--[[ dapui.setup({ ]]
--[[     layouts = { ]]
--[[         { ]]
--[[             elements = { ]]
--[[                 "console", ]]
--[[             }, ]]
--[[             size = 7, ]]
--[[             position = "bottom", ]]
--[[         }, ]]
--[[         { ]]
--[[             elements = { ]]
--[[                 -- Elements can be strings or table with id and size keys. ]]
--[[                 { id = "scopes", size = 0.25 }, ]]
--[[                 "watches", ]]
--[[             }, ]]
--[[             size = 40, ]]
--[[             position = "left", ]]
--[[         } ]]
--[[     }, ]]
--[[ }) ]]
--[[]]
--[[ dap.listeners.after.event_initialized["dapui_config"] = function() ]]
--[[     dapui.open(1) ]]
--[[ end ]]
--[[ dap.listeners.before.event_terminated["dapui_config"] = function() ]]
--[[     dapui.close() ]]
--[[ end ]]
--[[ dap.listeners.before.event_exited["dapui_config"] = function() ]]
--[[     dapui.close() ]]
--[[ end ]]
--[[]]
--[[ require("theprimeagen.debugger.node"); ]]
--[[]]
--[[ nnoremap("<Home>", function() ]]
--[[     dapui.toggle(1) ]]
--[[ end) ]]
--[[ nnoremap("<End>", function() ]]
--[[     dapui.toggle(2) ]]
--[[ end) ]]
--[[]]
--[[ nnoremap("<leader><leader>", function() ]]
--[[     dap.close() ]]
--[[ end) ]]
--[[]]
--[[ nnoremap("<Up>", function() ]]
--[[     dap.continue() ]]
--[[ end) ]]
--[[ nnoremap("<Down>", function() ]]
--[[     dap.step_over() ]]
--[[ end) ]]
--[[ nnoremap("<Right>", function() ]]
--[[     dap.step_into() ]]
--[[ end) ]]
--[[ nnoremap("<Left>", function() ]]
--[[     dap.step_out() ]]
--[[ end) ]]
--[[ nnoremap("<Leader>b", function() ]]
--[[     dap.toggle_breakpoint() ]]
--[[ end) ]]
--[[ nnoremap("<Leader>B", function() ]]
--[[     dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) ]]
--[[ end) ]]
--[[ nnoremap("<leader>rc", function() ]]
--[[     dap.run_to_cursor() ]]
--[[ end) ]]
