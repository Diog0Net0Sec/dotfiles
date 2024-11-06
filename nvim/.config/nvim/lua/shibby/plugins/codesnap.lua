return {
  "mistricky/codesnap.nvim",
  build = "make",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("codesnap").setup({
      mac_window_bar = true, -- mac window bar style
      watermark = "CodeSnap", -- watermark for snap
      watermark_font_family = "MonoLisa", -- watermark font family
      code_font_family = "MonoLisa", -- code font family
      watermark_color = "#4A4A4A", -- watermark color
      shadow_color = "#4A4A4A", -- shadow color
      title_bar_color = "#4A4A4A", -- title bar color
      border_color = "#4A4A4A", -- border color
      range_highlight_color = "#4A4A4A", -- range highlight color
      window_bar_color = "#4A4A4A", -- window bar color
      background = "#FFF", -- background color
      close_character_color = "#4A4A4A", -- close character color
      minimize_character_color = "#4A4A4A", -- minimize character color
      maximize_character_color = "#4A4A4A", -- maximize character color
      syntax_highlight_theme = "solarized-osaka", -- syntax highlighting theme
      save_path = "~/screenshots/",
    })
  end,
  keys = {
    { "<leader>ss", "<cmd>CodeSnap<cr>", desc = "Take snap" },
  },
}
