-- Install packer automatically

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		print("Installing packer, restart neovim")
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Safe require and pop up window config
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Plugins
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Devicons
	use("nvim-tree/nvim-web-devicons")

	-- Colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Git related plugins
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")

	-- Telescope ff
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- FF Algorithm for telescope
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	})

	-- Highlights, edition and code navigation
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter-textobjects",
		run = ":TSUpdate",
	})

	-- LSP and CMP
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{
				"williamboman/mason.nvim",
				run = ":MasonUpdate",
			},
			{ "williamboman/mason-lspconfig.nvim" },
			{ "mhartington/formatter.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },

			-- Extras
			{ "folke/neodev.nvim" },
		},
	})

	-- Git gutter signs and utilities
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Vim TMUX Navigation Integration
	use("christoomey/vim-tmux-navigator")

	-- Linting comments and navigation
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				signs = {
					error = "E",
					warning = "W",
					hint = "H",
					information = "I",
					other = "O",
				},
			})
		end,
	})

	-- Todo Comments
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})

	-- File explorer tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- Indentation guides
	use("lukas-reineke/indent-blankline.nvim")

	-- Floating Terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})

	-- Undo Tree
	use("mbbill/undotree")

	-- Toggle Comment (Setup Pending)
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Code Outline (Setup Pending)
	use({
		"stevearc/aerial.nvim",
		requires = "onsails/lspkind.nvim",
		config = function()
			require("aerial").setup()
			vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<cr>")
		end,
	})

	-- nvim autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- Useless Stuff
	use("eandrju/cellular-automaton.nvim")

	-- Set configuration automatically after cloning packer
	if packer_bootstrap then
		require("packer").sync()
	end
end)
