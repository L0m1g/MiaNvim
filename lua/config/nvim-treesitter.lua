require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "python", "bash", "markdown" },  -- 🌿 Parsers installés
    sync_install = false,  -- 🚀 Installation asynchrone
    auto_install = true,   -- 📦 Installe automatiquement les parsers manquants
    highlight = {
        enable = true,     -- ✨ Active le surlignage syntaxique
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },  -- 📏 Indentation automatique
})
