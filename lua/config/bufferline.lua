require("bufferline").setup({
	options = {
		mode = "buffers",
		separator_style = "slant",
		diagnostics = "nvim_lsp",
		offsets = {
			{ filetype = "NvimTree", text = "File Explorer", text_align = "center" },
		},
	},
})