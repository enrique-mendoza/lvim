-- Additional Plugins
lvim.plugins = {
	-- Buffers
	"nacro90/numb.nvim",

	-- Colors
	"NvChad/nvim-colorizer.lua",

	-- DAP
	"mfussenegger/nvim-dap-python",
	"mxsdev/nvim-dap-vscode-js",

	-- Git
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
	{
		"f-person/git-blame.nvim",
		event = "BufRead",
	},

	-- IDE
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	"is0n/jaq-nvim",
	"rmagatti/goto-preview",
	"simrat39/symbols-outline.nvim",
	"lvimuser/lsp-inlayhints.nvim",

	-- Languages
	-- For Java:
	"mfussenegger/nvim-jdtls",

	-- LSP
	-- "glepnir/lspsaga.nvim",
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
	},

	-- Navigation
	{
		"kevinhwang91/nvim-bqf",
		event = { "BufRead", "BufNew" },
	},
	{
		"nvim-telescope/telescope-project.nvim",
		event = "BufWinEnter",
		setup = function()
			vim.cmd([[packadd telescope.nvim]])
		end,
	},
	"psliwka/vim-smoothie",

	-- Treesitter
	{
		"nvim-treesitter/playground",
		event = "BufRead",
	},
	-- "nvim-treesitter/nvim-treesitter-angular",
	"nvim-treesitter/nvim-treesitter-textobjects",
	"romgrk/nvim-treesitter-context",

	-- Utils
	"cohama/lexima.vim",
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
	},
	"folke/zen-mode.nvim",
	"hrsh7th/cmp-emoji",
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
	},
	"windwp/nvim-ts-autotag",
}
