return {
  "glepnir/lspsaga.nvim",
  config = function()
    local saga = require("lspsaga")
    saga.setup({
      ui = {
        theme = 'round',
        border = 'rounded',
        winblend = 0,
        devicon = true,
        code_action = ''
      },
      symbol_in_winbar = {
        enable = false,
      },
      outline = {
        win_width = 50,
        auto_preview = false,
        auto_close = true,
      }
    })
  end
}
