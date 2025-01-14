return {
    {
        "nvim-lua/plenary.nvim", -- lua functions that many plugins use
    },
    {
        "christoomey/vim-tmux-navigator", -- tmux & split window navigation
    },
    {
        "L0m1g/noarrow",
        config = function()
            require("config.noarrow")
        end
    },
}

