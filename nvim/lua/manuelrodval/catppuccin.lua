-- ColorScheme Config
require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	show_end_of_buffer = true,
	integrations = {
		aerial = true,
	},
})

-- Set ColorScheme
vim.cmd.colorscheme("catppuccin")
