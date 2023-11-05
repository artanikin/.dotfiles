return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 80
    end

    local diagnostics = {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn" },
      symbols = { error = " ", warn = "  ", hint = "󰛩 ", info = "󰋼 " },
      colored = true,
      update_in_insert = false,
      always_visible = false,
    }

    local diff = {
      "diff",
      colored = true,
      --[[ symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols ]]
      symbols = { added = " ", modified = "󰻂 ", removed = " " }, -- changes diff symbols
      cond = hide_in_width
    }

    local mode = {
      "mode",
      fmt = function(str)
        return " " .. (str == "V-LINE" and "VL" or (str == "V-BLOCK" and "VB" or str:sub(1, 1)))
      end,
      padding = 1,
    }

    local lsp_status = function()
      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_active_clients()) do
          if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.name ~= "null-ls" then
            return (vim.o.columns > 100 and "   LSP ~ " .. client.name .. " ") or "   LSP "
          end
        end
      end
    end

    local lsp_progress = function()
      if not rawget(vim, "lsp") or vim.lsp.status then
        return ""
      end

      local Lsp = vim.lsp.util.get_progress_messages()[1]

      if vim.o.columns < 120 or not Lsp then
        return ""
      end

      if Lsp.done then
        vim.defer_fn(function()
          vim.cmd.redrawstatus()
        end, 1000)
      end

      local msg = Lsp.message or ""
      local percentage = Lsp.percentage or 0
      local title = Lsp.title or ""
      local spinners = { "", "󰪞", "󰪟", "󰪠", "󰪢", "󰪣", "󰪤", "󰪥" }
      local ms = vim.loop.hrtime() / 1000000
      local frame = math.floor(ms / 120) % #spinners
      local content = string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)

      return content or ""
    end

    local filetype = {
      "filetype",
      colored = true,
      icon_only = true,
      icon = { align = 'right' },
      cond = hide_in_width,
    }

    local branch = {
      "branch",
      icons_enabled = true,
      icon = "  ",
      cond = hide_in_width,
    }

    local location = {
      "location",
      padding = 0,
    }

    local searchcount = {
      "searchcount",
      icon = "󰺯 "
    }

    -- cool function for progress
    local progress = function()
      local current_line = vim.fn.line(".")
      local total_lines = vim.fn.line("$")
      local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
      local line_ratio = current_line / total_lines
      local index = math.ceil(line_ratio * #chars)
      return chars[index]
    end

    local filename = {
      "filename",
      path = 1,
      symbols = {
        modified = '󱞇 ',
        readonly = '󰮕 ',
      },
    }

    lualine.setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
        always_divide_middle = true,
        component_separators = { right = " "  },
        section_separators = { left = " ", right = " " },
        globalstatus = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { branch },
        lualine_c = { diff, filetype, filename },
        lualine_x = { lsp_progress, diagnostics, lsp_status },
        lualine_y = { location },
        lualine_z = { searchcount, progress },
      },
      tabline = {},
      extensions = {},
    })
  end,
}
