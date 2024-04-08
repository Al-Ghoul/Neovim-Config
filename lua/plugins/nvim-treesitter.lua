return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			build = ":TSUpdate",
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			event = {
				"BufReadPre",
				"BufNewFile",
			},
			ensure_installed = {
				"markdown_inline",
				"markdown",

				"bash",

				"lua",
				"luap",
				"luadoc",

				"gitignore",

				"c",
				"cpp",
				"cmake",

				"nix",
			},
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn", -- set to `false` to disable one of the mappings
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
		})
	end,
}
