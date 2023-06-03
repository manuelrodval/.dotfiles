require("lualine").setup({
	options = {
		theme = "catppuccin",
	},
	globalstatus = true,
	sections = {
		lualine_b = {
			"branch", "diff"
		},
		lualine_c = {
			function()
				return vim.fn.fnamemodify(vim.fn.bufname("%"), ":~:.")
			end,
		},
	},
})
