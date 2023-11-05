local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { import = "custom.plugins" },
  {import = "custom.plugins.lsp"},
}

require("lazy").setup(plugins, {
  checker = {
    enabled = false,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
    ui = {
    icons = {
      ft = " ",
      lazy = "󰂠 ",
      loaded = " ",
      not_loaded = " ",
    },
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "bugreport",
        "ftplugin",
        "getscript",
        "getscriptplugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwfilehandlers",
        "netrwplugin",
        "netrwsettings",
        "rplugin",
        "rrhelper",
        "spellfile_plugin",
        "synmenu",
        "syntax",
        "tar",
        "tarplugin",
        "tohtml",
        "tutor",
        "vimball",
        "vimballplugin",
        "zip",
        "zipplugin",
      },
    },
  },
})
