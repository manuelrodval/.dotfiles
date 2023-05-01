-- Treesitter configuration

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"python",
		"bash",
		"cpp",
		"css",
		"gitignore",
		"go",
		"html",
		"htmldjango",
		"json",
		"javascript",
		"markdown",
		"prisma",
		"rust",
		"sql",
		"typescript",
		"tsx",
	},
	autopairs = {
		enable = true,
	},
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
		disable = { "python", "css" },
	},
})
