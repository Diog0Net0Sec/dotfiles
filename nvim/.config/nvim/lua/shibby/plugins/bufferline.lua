return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "thin",
      show_buffer_close_icons = false,
      show_close_icon = false,
      color_icons = true,
      tab_size = 18,
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      indicator = {
        icon = "▎", -- this could be omitted as it's the default
        style = "icon",
      },
    },
    highlights = {
      fill = {
        fg = "#073642",
        bg = "#002b36",
      },
      background = {
        fg = "#657b83",
        bg = "#002b36",
      },
      tab = {
        fg = "#657b83",
        bg = "#002b36",
      },
      tab_selected = {
        fg = "#fdf6e3",
        bg = "#073642",
      },
      tab_close = {
        fg = "#dc322f",
        bg = "#002b36",
      },
      buffer_visible = {
        fg = "#657b83",
        bg = "#073642",
      },
      buffer_selected = {
        fg = "#fdf6e3",
        bg = "#073642",
        bold = true,
        italic = true,
      },
      separator = {
        fg = "#002b36",
        bg = "#002b36",
      },
      separator_selected = {
        fg = "#073642",
        bg = "#073642",
      },
      separator_visible = {
        fg = "#073642",
        bg = "#073642",
      },
      indicator_selected = {
        fg = "#859900", -- Changed to a more subtle green from Solarized palette
        bg = "#073642",
      },
    },
  },
}
