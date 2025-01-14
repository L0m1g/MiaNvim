require("toggleterm").setup({
    size = 15,               -- Taille du terminal
    open_mapping = [[<C-t>]], -- Raccourci pour ouvrir le terminal
    hide_numbers = true,     -- Cacher les numéros de ligne
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,      -- Plus sombre que le fond
    start_in_insert = true,  -- Démarre en mode insertion
    insert_mappings = true,  -- Active les mappings en mode insertion
    persist_size = true,     -- Garde la taille entre les sessions
    direction = "float",     -- Type de terminal (horizontal/vertical/float)
    close_on_exit = true,    -- Ferme le terminal à la fin de la commande
    shell = vim.o.shell,     -- Utilise le shell par défaut
})

