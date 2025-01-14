local navic = require("nvim-navic")

require("lualine").setup({
	options = {
		theme = "auto",
		section_separators = { "", "" },
		component_separators = { "|", "|" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = {
			{
				"filename",  -- 📄 Affiche le chemin du fichier
				path = 1,    -- 0 = Nom du fichier, 1 = Relatif, 2 = Absolu
				symbols = {
					modified = " ●",      -- Fichier modifié
					readonly = " 🔒",     -- Lecture seule
					unnamed = " [No Name]",
				},
			},
			{
				function()
					return navic.is_available() and navic.get_location() or ""
				end,
				icon = " ➤ "
			},
		},
		lualine_x = { "encoding", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
