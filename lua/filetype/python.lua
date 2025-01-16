-- LSP Pyright
require("lspconfig").pyright.setup({})

-- Autoformat avec Black à l'enregistrement
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        vim.cmd("Black")
    end,
})
