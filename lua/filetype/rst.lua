vim.defer_fn(function()
    vim.cmd("ZenMode")
end, 100)

-- Spellcheck pour reStructuredText
vim.opt_local.spell = true
vim.opt_local.spelllang = { "fr", "en" }



