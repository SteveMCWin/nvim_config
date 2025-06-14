return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()

    -- Optional: custom keymap
    local api = require("Comment.api")

    vim.keymap.set("n", "<Space>/", api.toggle.linewise.current, { desc = "Toggle comment line" })
  end,
}
