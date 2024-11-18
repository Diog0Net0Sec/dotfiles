return {
  "nvim-neorg/neorg",
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.summary"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/org/",
              },
            },
          },
        },
      },
    })
  end,
}
