require("zen-mode").setup({
    window = {
        backdrop = 0.95,
        width = 120,
        options = {
            signcolumn = "no",
            number = false,
            relativenumber = false,
        },
    },
    plugins = {
        options = {
            enabled = true,
            ruler = false,
            showcmd = false,
        },
        tmux = { enabled = true },
    },
    on_open = function()
        vim.g.zen_mode_active = true
        vim.cmd("Limelight")  -- Active Limelight avec ZenMode
    end,
    on_close = function()
        vim.g.zen_mode_active = false
        vim.cmd("Limelight!") -- Désactive Limelight avec ZenMode
    end,
})
