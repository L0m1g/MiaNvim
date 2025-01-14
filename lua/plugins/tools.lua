return {
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("config.telescope")
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("config.nvim-tree")
        end,
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            require("config.which-key")
        end,
    },
}
