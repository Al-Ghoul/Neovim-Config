return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	event = "VeryLazy",
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		require("dapui").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end)
		vim.keymap.set("n", "<S-F5>", function()
			require("dap").terminate()
		end)
		vim.keymap.set("n", "<F10>", function()
			require("dap").step_over()
		end)
		vim.keymap.set("n", "<F11>", function()
			require("dap").step_into()
		end)
		vim.keymap.set("n", "<F12>", function()
			require("dap").step_out()
		end)
		vim.keymap.set("n", "<Leader>dr", function()
			require("dap").restart()
		end)

		vim.keymap.set("n", "<Leader>db", function()
			require("dap").toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dB", function()
			require("dap").set_breakpoint()
		end)

		vim.keymap.set("n", "<Leader>dor", function()
			require("dap").repl.open()
		end)
		vim.keymap.set("n", "<Leader>drl", function()
			require("dap").run_last()
		end)

		vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
			require("dap.ui.widgets").hover()
		end)
		vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
			require("dap.ui.widgets").preview()
		end)
		vim.keymap.set("n", "<Leader>df", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.frames)
		end)
		vim.keymap.set("n", "<Leader>ds", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.scopes)
		end)
	end,
}
