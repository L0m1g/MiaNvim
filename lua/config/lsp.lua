local navic = require("nvim-navic")

require("lspconfig").pyright.setup({
    on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
            navic.attach(client, bufnr)
        end
    end,
})
