local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

telescope.setup {
  defaults = {
    prompt_prefix = "   ",
    layout_config = {
       horizontal = {
          prompt_position = "top",
          preview_width = function(_, cols, _)
            if cols > 200 then
              return math.floor(cols * 0.4)
            else
              return math.floor(cols * 0.6)
            end
          end,
          results_width = 0.8,
       },
       vertical = {
          mirror = false,
       },
       flex = {
         horizontal = {
           preview_width = 0.9,
         },
       },
       width = 0.87,
       height = 0.80,
       preview_cutoff = 120,
    },
    file_ignore_patterns = { "node_modules/" },
    path_display = { "truncate" },
    mappings = {
      i = {
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,
        ["?"] = actions.which_key,
      },
    },
  },
  extensions = {
   fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
}

require("telescope").load_extension('harpoon')
require('telescope').load_extension('fzf')
local themes = require "telescope.themes"

local M = {}

M.find_files = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({ previewer = false })
  )
end

M.search_dotfiles = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({
      prompt_title = "~ dotfiles ~",
      cwd = "~/.config/nvim/",
      shorten_path = false,
      previewer = false,
    })
  )
end

M.live_grep = function()
  require("telescope.builtin").live_grep {
    -- shorten_path = true,
    previewer = false,
  }
end

M.buffers = function()
  require("telescope.builtin").buffers({
    require('telescope.themes').get_dropdown({
      previewer = false,
      shorten_path = false,
    })
  })
end

M.curbuf = function()
  local opts = themes.get_dropdown {
    winblend = 10,
    border = true,
    previewer = false,
    shorten_path = false,
  }
  require("telescope.builtin").current_buffer_fuzzy_find(opts)
end

M.search_all_files = function()
  require("telescope.builtin").find_files {
    find_command = { "rg", "--no-ignore", "--files" },
  }
end

M.file_browser = function()
  local opts

  opts = {
    sorting_strategy = "ascending",
    scroll_strategy = "cycle",
    layout_config = {
      prompt_position = "top",
    },

    attach_mappings = function(prompt_bufnr, map)
      local current_picker = action_state.get_current_picker(prompt_bufnr)

      local modify_cwd = function(new_cwd)
        local finder = current_picker.finder

        finder.path = new_cwd
        finder.files = true
        current_picker:refresh(false, { reset_prompt = true })
      end

      map("i", "-", function()
        modify_cwd(current_picker.cwd .. "/..")
      end)

      map("i", "~", function()
        modify_cwd(vim.fn.expand "~")
      end)

      map("n", "yy", function()
        local entry = action_state.get_selected_entry()
        vim.fn.setreg("+", entry.value)
      end)

      return true
    end,
  }

  require("telescope").extensions.file_browser.file_browser(opts)
end

M.search_only_certain_files = function ()
  require("telescope.builtin").find_files {
    find_command = {
      "rg",
      "--files",
      "--type",
      vim.fn.input "Type: ",
    },
  }
end

-- Rails Path
M.search_rails_models = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({
      prompt_title = "~ Rails Models ~",
      cwd = "app/models/",
      previewer = false
    })
  )
end

M.search_rails_controllers = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({
      prompt_title = "~ Rails Controllers ~",
      cwd = "app/controllers/",
      previewer = false
    })
  )
end

M.search_rails_views = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({
      prompt_title = "~ Rails Views ~",
      cwd = "app/views",
      previewer = false
    })
  )
end

M.search_rails_specs = function()
  require("telescope.builtin").find_files(
    themes.get_dropdown({
      prompt_title = "~ Rails Specs ~",
      cwd = "app/specs",
      previewer = false
    })
  )
end

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("c", "<c-r><c-r>", "<Plug>(TelescopeFuzzyCommandSearch)", opts)
keymap("n", "<leader>ff", "<cmd>lua require'user.telescope'.find_files()<cr>", opts)
keymap("n", "<Leader>fw", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
keymap("n", "<leader>fo", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fb", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fm", "<cmd>lua require'telescope.builtin'.marks()<cr>", opts)
keymap("n", "<Leader>fv", "<cmd>lua require'user.telescope'.search_dotfiles()<cr>", opts)
keymap("n", "<Leader>ft", "<cmd>lua require'telescope.builtin'.tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fg", "<cmd>lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fh", "<cmd>lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<Leader>fl", "<cmd>lua require'user.telescope'.curbuf()<cr>", opts)
keymap("n", "<Leader>fi", "<cmd>lua require'user.telescope'.search_all_files()<cr>", opts)
keymap("n", "<Leader>fe", "<cmd>lua require'user.telescope'.file_browser()<cr>", opts)
keymap("n", "<Leader>fz", "<cmd>lua require'user.telescope'.search_only_certain_files()<cr>", opts)
keymap("n", "<Leader>fs", "<cmd>lua require'telescope.builtin'.lsp_document_symbols()<cr>", opts)
keymap("n", "<Leader>fn", "<cmd>lua require'telescope'.extensions.notify.notify()<cr>", opts)

keymap("n", "<Leader>fM", "<cmd>lua require'user.telescope'.search_rails_models()<cr>", opts)
keymap("n", "<Leader>fC", "<cmd>lua require'user.telescope'.search_rails_controllers()<cr>", opts)
keymap("n", "<Leader>fV", "<cmd>lua require'user.telescope'.search_rails_views()<cr>", opts)
keymap("n", "<Leader>fT", "<cmd>lua require'user.telescope'.search_rails_specs()<cr>", opts)

return M
