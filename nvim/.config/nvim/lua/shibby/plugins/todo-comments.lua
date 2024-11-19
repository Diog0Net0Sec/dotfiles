return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })
    -- TODO : add keymaps
    -- WARNING : add keymaps
    -- FIX: add keymaps
    -- PERF: add keymaps
    -- HACK: add keymaps
    -- NOTE: add keymaps
    -- TODO: add keymaps

    todo_comments.setup()
  end,
}
