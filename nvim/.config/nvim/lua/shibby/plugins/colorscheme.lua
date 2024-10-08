return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      -- other options...
    },
    config = function()
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}
