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

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    pattern = { "*.md", "*.markdown", "README" },  -- README sans extension inclus
    callback = function()
        print("📝 Autocommand global détecté !")
        if not vim.g.zen_mode_active then
            vim.defer_fn(function()
                vim.cmd("ZenMode")
                print("✅ Zen Mode activé automatiquement !")
            end, 200)
        end
    end,
})
