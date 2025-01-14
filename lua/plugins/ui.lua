return {
    {
        'shmerl/neogotham',
        lazy = false,  -- pour s'assurer qu'il est chargé au démarrage
        priority = 1000,  -- pour le charger avant les autres plugins
        config = function()
            require("config.neogotham")
        end,
    },
    { "nvim-lualine/lualine.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    {
        "goolord/alpha-nvim",
        config = function()
            require("config.miavim")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.lualine")
        end,
    },
    {
        "SmiteshP/nvim-navic",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require("config.nvim-mavic")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.bufferline")
        end,
    },
    {
        "gorbit99/codewindow.nvim",
        config = function()
            local codewindow = require("codewindow")
            codewindow.setup({
                auto_enable = true,
                width = 10,
                minimap_width = 15,
                window_border = "none",
                use_lsp = true,
                use_treesitter = true,
                exclude_filetypes = { "NvimTree", "alpha", "packer" },
            })

            -- Raccourci pour toggle la minimap
            vim.keymap.set("n", "<leader>m", function()
                codewindow.toggle_minimap()
            end, { desc = "🗺️ Basculer la minimap" })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "python", "bash", "markdown" },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    }
}
