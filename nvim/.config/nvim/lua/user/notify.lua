local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

local icons = require "user.icons"

notify.setup {
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",
  render = "default",
  timeout = 175,

  background_colour = "#0000000",

  -- Minimum width for notification windows
  minimum_width = 10,

  -- Icons for the different levels
  icons = {
    ERROR = icons.diagnostics.Error,
    WARN = icons.diagnostics.Warning,
    INFO = icons.diagnostics.Information,
    DEBUG = icons.ui.Bug,
    TRACE = icons.ui.Pencil,
  },
}

vim.notify = notify
