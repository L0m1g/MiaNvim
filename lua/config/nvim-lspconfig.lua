local lspconfig = require("lspconfig")

local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)  --  Attache Navic au LSP
    end
end

-- Python
lspconfig.pyright.setup({
    on_attach = on_attach,
})

-- Lua
lspconfig.lua_ls.setup({
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        },
    },
})

-- Markdown & reStructuredText
lspconfig.marksman.setup({})

local navic = require("nvim-navic")

-- Exemple avec Pyright
require("lspconfig").pyright.setup({
    on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
            navic.attach(client, bufnr)  --  Attache Navic au LSP
        end
    end,
})

