-- Charge automatiquement la config du type de fichier
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        local ft = vim.bo.filetype
        local config_path = vim.fn.stdpath("config") .. "/lua/filetype/" .. ft .. ".lua"

        -- 🔎 On charge uniquement si le fichier existe
        if vim.fn.filereadable(config_path) == 1 then
            dofile(config_path)
            print("✅ Chargé : " .. config_path)
        else
            -- ✅ Plus besoin d'afficher les erreurs
            -- print("🔍 Aucun fichier pour : " .. ft)
        end
    end,
})
-- 🔒 Forcer l'indentation à 4 espaces pour Lua
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})

-- Redimensionne les fenêtres lors du redimensionnement du terminal
vim.api.nvim_create_autocmd("VimResized", {
	group = vim.api.nvim_create_augroup("win_autoresize", { clear = true }),
	desc = "Auto-resize windows on resizing operation",
	command = "wincmd =",
})
