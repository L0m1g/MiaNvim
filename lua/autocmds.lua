-- 🚀 Auto-chargement de tous les fichiers dans lua/filetype/
-- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
--     pattern = "*",
--     callback = function()
--         vim.defer_fn(function()
--             local ft = vim.bo.filetype
--             local file = vim.fn.stdpath("config") .. "/lua/filetype/" .. ft .. ".lua"

--             if vim.fn.filereadable(file) == 1 then
--                 vim.cmd("source " .. file)
--             end
--         end, 100)
--     end,
-- })

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

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "README", "README.*" },  -- 📝 Tous les fichiers README
    callback = function()
        vim.bo.filetype = "markdown"    -- 📄 Force le type Markdown
    end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
    callback = function()
        print("🔍 BufWinEnter déclenché : " .. vim.fn.expand("<afile>"))
    end,
})

-- formate et revient à la position initiale
local function format_and_restore()
    vim.cmd("normal! mz")     -- 📍 Place une marque 'z' à la position actuelle
    vim.cmd("normal! gg=G")   -- ✨ Formate tout le fichier
    vim.cmd("normal! `z")     -- 🔙 Retourne à la marque 'z'
end

vim.keymap.set("n", "<leader>f", format_and_restore, { desc = "Format et retourne à la position" })
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern="*",
    callback = format_and_restore,
})
