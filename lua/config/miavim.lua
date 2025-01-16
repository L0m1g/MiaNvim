local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- 🎨 Logo MiaVim
dashboard.section.header.val = {
    "███╗   ███╗██╗ █████╗ ██╗   ██╗██╗███╗   ███╗",
    "████╗ ████║██║██╔══██╗██║   ██║██║████╗ ████║",
    "██╔████╔██║██║███████║██║   ██║██║██╔████╔██║",
    "██║╚██╔╝██║██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚═╝ ██║██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝     ╚═╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

-- 📜 Menu
dashboard.section.buttons.val = {
    dashboard.button("n", " Nouveau fichier", ":ene <BAR> startinsert <CR>"),
    dashboard.button("o", " Ouvrir un fichier", ":Telescope find_files<CR>"),
    dashboard.button("r", " Fichiers récents", ":Telescope oldfiles<CR>"),
    dashboard.button("q", " Quitter", ":qa<CR>"),
}

-- 🕹️ Activer le dashboard
alpha.setup(dashboard.opts)

