return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      {
        "<leader>th",
        "<cmd>ToggleTerm size=18 dir=~/Desktop direction=horizontal name=desktop<cr>",
        desc = "Toggle terminal",
      },
    },
  },
}
