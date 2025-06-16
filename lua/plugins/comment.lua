return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
        vim.keymap.set("n", "<Space>/", require("Comment.api").toggle.linewise.current, { desc = "Toggle comment line" })
    end,
}
