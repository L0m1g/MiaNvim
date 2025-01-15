-- 🚀 Auto-chargement de tous les fichiers dans lua/filetype/
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
    pattern = "*",
    callback = function()
        vim.defer_fn(function()
            local ft = vim.bo.filetype
            local file = vim.fn.stdpath("config") .. "/lua/filetype/" .. ft .. ".lua"

            -- 🔍 Afficher le chemin exact
            print("🔎 Tentative de chargement : " .. file)

            -- Chargement du fichier si présent
            if vim.fn.filereadable(file) == 1 then
                vim.cmd("source " .. file)
                print("✅ Fichier chargé : " .. file)
            else
                print("❌ Fichier introuvable : " .. file)
            end
        end, 100)
    end,
})

-- Redimensionne les fenêtres lors du redimensionnement du terminal
vim.api.nvim_create_autocmd("VimResized", {
    group = vim.api.nvim_create_augroup("win_autoresize", { clear = true }),
    desc = "Auto-resize windows on resizing operation",
    command = "wincmd =",
})

-- 🔎 Désactive le highlight après la recherche
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.cmd("nohlsearch")
    end,
})
