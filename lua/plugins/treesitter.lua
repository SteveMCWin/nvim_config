return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },

            indent = { enable = true },

            ensure_installed = {
                "json",
                "go",
                "gosum",
                "gomod",
                "html",
                "css",
                "http",
                "cpp",
                "cmake",
                "c",
                "glsl",
                "gdscript",
                "gdshader",
                "godot_resource",
                "lua",
                "markdown",
                "bash",
                "vim",
                "vimdoc",
            },

            incremental_selection = {
                enable = true,
            },

            additional_vim_regex_highlighting = false,
        })
    end,
}
