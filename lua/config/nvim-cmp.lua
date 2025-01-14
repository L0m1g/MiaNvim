local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }),
})

-- 💀 Désactiver toutes les suggestions inutiles pour rst
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWinEnter", "FileType" }, {
    pattern = "rst",
    callback = function()
        print("🚫 Suppression totale des suggestions inutiles pour rst")
        require("cmp").setup.buffer({
            sources = {
                { name = "nvim_lsp" },  -- Suggestions du LSP uniquement
                { name = "luasnip" },   -- Snippets uniquement
                -- PAS de buffer, PAS de path, PAS de cmdline
            },
        })
    end,
    group = vim.api.nvim_create_augroup("ForceCmpRST", { clear = true }),
    desc = "Suppression des suggestions inutiles pour rst",
})

