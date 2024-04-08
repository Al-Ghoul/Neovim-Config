return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig", "ms-jpq/coq_nvim" },
	lazy = false,
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			ensure_installed = {
				"clang_format",
				"codelldb",
			},
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				"cmake",
			},
		})

		local lspconfig = require("lspconfig")

		local coq = require("coq")

		lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
			runtime = {
				version = "LuaJIT",
			},
			settings = {
				Lua = {
					workspace = {
						library = {
							vim.env.VIMRUNTIME,
						},
					},
				},
			},
		}))

		lspconfig.clangd.setup(coq.lsp_ensure_capabilities({}))

		lspconfig.cmake.setup(coq.lsp_ensure_capabilities({ init_options = { buildDirectory = "build" } }))
	end,
}
