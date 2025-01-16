return {
	{
		"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	},
	{
		"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	},
	{
		"L0m1g/noarrow.nvim",
		config = function()
			require("noarrow").setup({
				show_message = true,  -- Affiche un message (ou false pour silence total)
			})
		end
	},
}

