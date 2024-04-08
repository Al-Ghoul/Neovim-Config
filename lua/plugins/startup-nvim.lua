return {
	"startup-nvim/startup.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = function()
		require("startup").setup({
			parts = { "header", "body" },
			header = {
				type = "text",
				align = "center",
				fold_section = false,
				title = "Header",
				margin = 5,
				content = require("startup.headers").hydra_header,
				highlight = "Statement",
				default_color = "",
				oldfiles_amount = 0,
			},
			body = {
				type = "mapping",
				align = "center",
				fold_section = false,
				title = "Basic Commands",
				margin = 5,
				content = {
					{ " Find File", "FzfLua files", "<leader>ff" },
					{ "󰍉 Find Word", "FzfLua live_grep", "<leader>fg" },
					{ " Recent Files", "FzfLua oldfiles", "<leader>of" },
					{ " Colorschemes", "FzfLua colorschemes", "<leader>cs" },
					{ " New File", "lua require'startup'.new_file()", "<leader>nf" },
				},
				highlight = "String",
				default_color = "",
				oldfiles_amount = 0,
			},
		})
	end,
}
