require("toggleterm").setup({
	start_in_insert = true,
	direction = "float",
	open_mapping = [[<c-t>]],
})

vim.keymap.set("n", "<leader>h<c-t>", ":ToggleTerm direction=horizontal<cr>")
vim.keymap.set("n", "<leader>f<c-t>", ":ToggleTerm direction=float<cr>")
