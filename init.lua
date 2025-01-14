-- Optimise le temps de chargement
vim.loader.enable()

-- Chargement des plugins
require("autocmds")
require("keymaps")
require("lazy-setup")

-- Configuration de base
vim.opt.number = true        -- Numéros de ligne
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus" -- Copier/coller système
vim.opt.mouse = "a"          -- Activation de la souris
vim.opt.wrap = true          -- Retour à la ligne activé (utile pour Markdown)
vim.opt.linebreak = true    -- Empêcher la coupure des mots
vim.opt.breakindent = true  -- Maintenir une indentation visuelle des lignes brisées
