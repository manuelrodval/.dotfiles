require("lualine").setup({
	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_c = {
			function()
				return vim.fn.fnamemodify(vim.fn.bufname("%"), ":~:.")
			end,
		},
	},
})
