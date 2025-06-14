return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "andrew-george/telescope-themes",
        "nvim-telescope/telescope-ui-select.nvim",
    },

    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        -- local builtin = require("telescope.builtin")

        telescope.load_extension("fzf")
        telescope.load_extension("themes")
        telescope.load_extension("ui-select")

        telescope.setup({
            defaults = {
                path_display = {"smart"},
                -- mappings = {},
                extensions = {
                    themes = {
                        enable_previewer = true,
                        enable_livepreview = true,
                        persist = {
                            enabled = true,
                            path = vim.fn.stdpath("config") .. "lua/colorscheme.lua",
                        },
                    }
                }
            }
        })

        local telescope_builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fw', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })

    end
}
