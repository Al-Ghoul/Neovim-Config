-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		local efm = vim.lsp.get_active_clients({ name = "efm" })

		if vim.tbl_isempty(efm) then
			return
		end

		vim.lsp.buf.format({ name = "efm", async = true })
	end,
})

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
	group = vim.api.nvim_create_augroup("NotifyClearGrp", {}),
	pattern = "*",
	callback = function()
		require("notify").dismiss({ silent = true })
	end,
})
