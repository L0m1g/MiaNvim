return {
    -- Mason : Gestionnaire de LSP, DAP, Linters et Formatters
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("config.mason")
        end,
    },

    -- Mason-LSPconfig : Intégration avec les serveurs LSP
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("config.mason-lspconfig")
        end,
    },

    -- LSP Config : Configuration des serveurs LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.nvim-lspconfig")
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
        config = function()
            require("config.luasnip")
        end,
    },
    -- nvim-cmp : Moteur d’autocomplétion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            require("config.nvim-cmp")
        end,
    },
}
