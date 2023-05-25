require'bufferline'.setup{
options = {
    numbers = "none",
    close_command = "Bdelete! %d",
    indicator = { style = "icon", icon = "▎"},
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 30,
    max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
    tab_size = 21,
    diagnostics = true, -- "nvim_lsp",
    diagnostics_update_in_insert = false,
    -- diagnostics_indicator = function(count, _, _, _)
    --   return "("..count..")"
    -- end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    -- custom_filter = function(buf_number)
    --   -- filter out filetypes you don't want to see
    --   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
    --     return true
    --   end
    --   -- filter out by buffer name
    --   if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
    --     return true
    --   end
    --   -- filter out based on arbitrary rules
    --   -- e.g. filter out vim wiki buffer from tabline in your work repo
    --   if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
    --     return true
    --   end
    -- end,
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin", -- "slant" | "thick" | "thin" | { 'any', 'any' }
    enforce_regular_tabs = true,
    always_show_bufferline = false,
    -- 'extension' | 'relative_directory' | 'directory'
    -- sort_by = function(buffer_a, buffer_b)
    --   -- add custom logic
    --   return buffer_a.modified > buffer_b.modified
    -- end
  },
  -- highlights = {
  --   fill = {
  --     guifg = { attribute = "fg", highlight = "#ff0000" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   background = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --
  --   -- buffer_selected = {
  --   --   guifg = {attribute='fg',highlight='#ff0000'},
  --   --   guibg = {attribute='bg',highlight='#0000ff'},
  --   --   gui = 'none'
  --   --   },
  --   buffer_visible = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --
  --   close_button = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   close_button_visible = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   -- close_button_selected = {
  --   --   guifg = {attribute='fg',highlight='TabLineSel'},
  --   --   guibg ={attribute='bg',highlight='TabLineSel'}
  --   --   },
  --
  --   tab_selected = {
  --     guifg = { attribute = "fg", highlight = "Normal" },
  --     guibg = { attribute = "bg", highlight = "Normal" },
  --   },
  --   tab = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   tab_close = {
  --     -- guifg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
  --     guifg = { attribute = "fg", highlight = "TabLineSel" },
  --     guibg = { attribute = "bg", highlight = "Normal" },
  --   },
  --
  --   duplicate_selected = {
  --     guifg = { attribute = "fg", highlight = "TabLineSel" },
  --     guibg = { attribute = "bg", highlight = "TabLineSel" },
  --     gui = "italic",
  --   },
  --   duplicate_visible = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --     gui = "italic",
  --   },
  --   duplicate = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --     gui = "italic",
  --   },
  --
  --   modified = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   modified_selected = {
  --     guifg = { attribute = "fg", highlight = "Normal" },
  --     guibg = { attribute = "bg", highlight = "Normal" },
  --   },
  --   modified_visible = {
  --     guifg = { attribute = "fg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --
  --   separator = {
  --     guifg = { attribute = "bg", highlight = "TabLine" },
  --     guibg = { attribute = "bg", highlight = "TabLine" },
  --   },
  --   separator_selected = {
  --     guifg = { attribute = "bg", highlight = "Normal" },
  --     guibg = { attribute = "bg", highlight = "Normal" },
  --   },
  --   -- separator_visible = {
  --   --   guifg = {attribute='bg',highlight='TabLine'},
  --   --   guibg = {attribute='bg',highlight='TabLine'}
  --   --   },
  --   indicator_selected = {
  --     guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
  --     guibg = { attribute = "bg", highlight = "Normal" },
  --   },
  -- },
}

-- move between buffers
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true})
