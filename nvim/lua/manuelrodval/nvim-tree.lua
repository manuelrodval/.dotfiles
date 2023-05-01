-- Nvim tree config
require("nvim-tree").setup({
	open_on_tab = true,
	git = { ignore = false },
	view = {
		adaptive_size = true,
		side = "right",
		number = true,
		relativenumber = true,
	},
	renderer = {
		highlight_opened_files = "all",
	},
})

vim.keymap.set("n", "<leader><F2>", ":NvimTreeToggle<cr>")
