-- Indentation propre pour Python
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4

-- LSP Pyright
require("lspconfig").pyright.setup({})

-- Autoformat avec Black à l'enregistrement
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        vim.cmd("Black")
    end,
})
