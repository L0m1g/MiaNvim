require("nvim-tree").setup({
    actions = {
        open_file = {
            resize_window=true,
            window_picker = {
                enable = true,
            },
        },
    },
    view = {
        width = 40, -- Largeur de l'explorateur
        side = "left", -- Position : gauche
    },
    renderer = {
        highlight_opened_files = "all", -- Mets en valeur les fichiers ouverts
    },
})



