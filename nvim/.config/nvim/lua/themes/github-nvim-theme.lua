require('github-theme').setup({
  options = {
    styles = {
      comments = 'italic',
      keywords = 'bold',
      types = 'italic,bold',
    },
    transparent = true
  },
})

-- setup must be called before loading (github_dark, github_dark_dimmed, github_dark_high_contrast, github_dark_colorblind, github_light, github_light_default, github_light_colorblind, github_light_tritanopia)
vim.cmd("colorscheme github_dark")
