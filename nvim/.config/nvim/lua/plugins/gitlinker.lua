return {
  "ruifm/gitlinker.nvim",
  event = "BufRead",
  config = function()
    require("gitlinker").setup({
      opts = {
        remote = nil, -- force the use of a specific remote
        -- adds current line nr in the url for normal mode
        add_current_line_on_normal_mode = true,
        -- callback for what to do with the url
        action_callback = require("gitlinker.actions").copy_to_clipboard,
        -- print the url after performing the action
        print_url = true,
      },
      callbacks = {
        ["git.sbermarket.tech"] = function(url_data)
          url_data.host = "gitlab.sbermarket.tech"
          return require("gitlinker.hosts").get_gitlab_type_url(url_data)
        end,
        ["gitlab.sbmt.io"] = function(url_data)
          url_data.host = "gitlab.sbmt.io"
          return require("gitlinker.hosts").get_gitlab_type_url(url_data)
        end,
      },
      mappings = nil,
    })

    vim.keymap.set(
      "n",
      "<leader>gb",
      '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      { silent = true }
    )
    vim.keymap.set(
      "v",
      "<leader>gb",
      '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      {}
    )

    vim.keymap.set(
      "n",
      "<leader>gy",
      '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
      { silent = true }
    )
    vim.keymap.set(
      "v",
      "<leader>gy",
      '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
      { silent = true }
    )

    vim.keymap.set("n", "<leader>gY", '<cmd>lua require"gitlinker".get_repo_url()<cr>', { silent = true })
    vim.keymap.set(
      "n",
      "<leader>gB",
      '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      { silent = true }
    )
  end,
}
