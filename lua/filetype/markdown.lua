--  Activation automatique de Zen Mode pour Markdown
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = { "*.md", "*.markdown" },
    callback = function()
        if not vim.g.zen_mode_active then
            vim.defer_fn(function()
                vim.cmd("ZenMode")  -- ⚡ Active Zen Mode
                print(" Zen Mode activé pour Markdown !")
            end, 200)  --  Délai pour éviter les conflits
        end
    end,
})
