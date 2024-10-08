return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- Solarized Osaka colors
    local colors = {
      base03 = "#002b36",
      base02 = "#073642",
      base01 = "#586e75",
      base00 = "#657b83",
      base0 = "#839496",
      base1 = "#93a1a1",
      base2 = "#eee8d5",
      base3 = "#fdf6e3",
      yellow = "#b58900",
      orange = "#cb4b16",
      red = "#dc322f",
      magenta = "#d33682",
      violet = "#6c71c4",
      blue = "#268bd2",
      cyan = "#2aa198",
      green = "#859900",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.base03, gui = "bold" },
        b = { bg = colors.base02, fg = colors.base1 },
        c = { bg = colors.base03, fg = colors.base1 },
      },
      insert = {
        a = { bg = colors.green, fg = colors.base03, gui = "bold" },
        b = { bg = colors.base02, fg = colors.base1 },
        c = { bg = colors.base03, fg = colors.base1 },
      },
      visual = {
        a = { bg = colors.magenta, fg = colors.base03, gui = "bold" },
        b = { bg = colors.base02, fg = colors.base1 },
        c = { bg = colors.base03, fg = colors.base1 },
      },
      replace = {
        a = { bg = colors.red, fg = colors.base03, gui = "bold" },
        b = { bg = colors.base02, fg = colors.base1 },
        c = { bg = colors.base03, fg = colors.base1 },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.base03, gui = "bold" },
        b = { bg = colors.base02, fg = colors.base1 },
        c = { bg = colors.base03, fg = colors.base1 },
      },
      inactive = {
        a = { bg = colors.base02, fg = colors.base00, gui = "bold" },
        b = { bg = colors.base03, fg = colors.base00 },
        c = { bg = colors.base03, fg = colors.base00 },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.orange },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
