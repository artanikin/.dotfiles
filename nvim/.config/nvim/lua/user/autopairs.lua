local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { "lua", "source" },
    javascript = { "string", "template_string" }
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<C-p>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
  map_cr = true, --  map <CR> on insert mode
  -- map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  -- auto_select = true, -- automatically select the first item
  -- insert = false, -- use insert confirm behavior instead of replace
  -- map_char = { -- modifies the function or method delimiter by filetypes
  --   all = '(',
  --   tex = '{'
  -- }
})

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
