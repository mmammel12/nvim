return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dapui").setup()
			require("nvim-dap-virtual-text").setup()
			vim.fn.sign_define(
				"DapBreakpoint",
				{ text = "🔴", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
			)

			-- Debugger
			vim.api.nvim_set_keymap("n", "<leader>dt", ":DapUiToggle<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true })
			vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", { noremap = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>dr",
				":lua require('dapui').open({reset = true})<CR>",
				{ noremap = true }
			)
		end,
	},
	"theHamsta/nvim-dap-virtual-text",
	{
		"mxsdev/nvim-dap-vscode-js",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-vscode-js").setup({
				adapters = { "pwa-node", "pwa-chrome" },
			})

			require("dap").configurations.javascript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					skipFiles = { "<node_internals>/**" },
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-chrome",
					request = "launch",
					name = "Launch Chrome",
					url = "http://localhost:3000",
					webRoot = "${workspaceFolder}",
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
			}
		end,
	},
}
