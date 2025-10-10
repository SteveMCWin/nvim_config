return {
    --[[
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    --]]
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "neovim/nvim-lspconfig",
        -- "saghen/blink.cmp",
    },
    config = function()
        -- import mason and mason_lspconfig
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        -- NOTE: Moved these local imports below back to lspconfig.lua due to mason depracated handlers

        -- local lspconfig = require("lspconfig")
        -- local cmp_nvim_lsp = require("cmp_nvim_lsp")             -- import cmp-nvim-lsp plugin
        -- local capabilities = cmp_nvim_lsp.default_capabilities() -- used to enable autocompletion (assign to every lsp server config)

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            automatic_enable = true,
            -- servers for mason to install
            ensure_installed = {
                "sqlls",
                "vtsls",
                "ts_ls",
                "vue_ls",
                "dockerls",
				"html",
				"cssls",
                "lua_ls",
                "gopls",
                "clangd",
                "hyprls",
                "jsonls",
                "yamlls",
                "gh_actions_ls",
                "bashls",
            },
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "clangd",
                "cpptools",
                "cmakelint",
                "dotenv-linter",
                "eslint_d",
                "actionlint",
                "beautysh",
            },

        })
    end,
}
