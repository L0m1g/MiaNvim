vim.defer_fn(function()
    vim.cmd("ZenMode")
end, 100)

-- Vérification orthographique
vim.opt_local.spell = true
vim.opt_local.spelllang = { "fr" }
vim.opt_local.wrap = true

