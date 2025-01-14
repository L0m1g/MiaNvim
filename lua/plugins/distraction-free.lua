return {
   {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        config = function()
            require("config.zen-mode")
        end,
    },
    {
        "junegunn/limelight.vim",
        config = function()
            require("config.limelight")
        end,
    },
}
