vim.defer_fn(function()
    vim.cmd("ZenMode")
end, 100)

-- Activation automatique de Zen Mode pour RST
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.rst",
    callback = function()
        if not vim.g.zen_mode_active then
            vim.defer_fn(function()
                vim.cmd("ZenMode")  --  Active Zen Mode après chargement
                print(" Zen Mode activé pour RST !")
            end, 200)  --  Délai pour éviter les conflits
        end
    end,
})


