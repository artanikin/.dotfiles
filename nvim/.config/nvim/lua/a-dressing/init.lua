require('dressing').setup({
  input = {
    -- Default prompt string
    default_prompt = "➤ ",

    -- When true, <Esc> will close the modal
    insert_only = true,

    -- These are passed to nvim_open_win
    anchor = "SW",
    relative = "cursor",
    row = 0,
    col = 0,
    border = "rounded",

    -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    prefer_width = 40,
    max_width = nil,
    min_width = 20,

    -- Window transparency (0-100)
    winblend = 10,

    -- see :help dressing-prompt
    prompt_buffer = false,

    -- see :help dressing_get_config
    get_config = nil,
  },
  select = {
    -- Priority list of preferred vim.select implementations
    backend = { "telescope", "fzf", "builtin", "nui" },

    -- Options for telescope selector
    telescope = {
      -- can be 'dropdown', 'cursor', or 'ivy'
      theme = "dropdown",
    },

    -- Options for fzf selector
    fzf = {
      window = {
        width = 0.5,
        height = 0.4,
      },
    },

   -- Options for nui Menu
    nui = {
      position = "50%",
      size = nil,
      relative = "editor",
      border = {
        style = "rounded",
      },
      max_width = 80,
      max_height = 40,
    },

    -- Options for built-in selector
    builtin = {
      -- These are passed to nvim_open_win
      anchor = "NW",
      relative = "cursor",
      row = 0,
      col = 0,
      border = "rounded",

      -- Window transparency (0-100)
      winblend = 10,

      -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
      width = nil,
      max_width = 0.8,
      min_width = 40,
      height = nil,
      max_height = 0.9,
      min_height = 10,
    },

    -- see :help dressing_get_config
    get_config = nil,
  },
}) 
