-- Chemin où lazy.nvim sera installé
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Vérifie si lazy.nvim est déjà installé, sinon le clone automatiquement
if not vim.loop.fs_stat(lazypath) then
    print("Clonage de lazy.nvim...")
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- Utilise la branche stable
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Configuration des plugins
require("lazy").setup({ import = "plugins" })

