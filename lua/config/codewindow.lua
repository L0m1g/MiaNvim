local codewindow = require("codewindow")
codewindow.setup({
    auto_enable = true,
    width = 10,
    minimap_width = 15,
    window_border = "none",
    use_lsp = true,
    use_treesitter = true,
    exclude_filetypes = { "NvimTree", "alpha", "packer" },
})

-- Raccourci pour toggle la minimap
vim.keymap.set("n", "<leader>m", function()
    codewindow.toggle_minimap()
end, { desc = "🗺️ Basculer la minimap" })

