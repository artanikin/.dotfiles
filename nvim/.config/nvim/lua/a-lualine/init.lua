local function full_filepath()
  return vim.fn.fnamemodify(vim.fn.expand('%:p'), ":~:.")
end

require'lualine'.setup({
  options = {
    icons_enabled = true,
    theme = 'nightfly', -- oceanicnext
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', "diff"},
    lualine_c = {full_filepath},
    lualine_x = {
      { "diagnostics", sources = {"nvim_lsp"} },
      'encoding',
      'fileformat',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {full_filepath},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {"fugitive"}
})
