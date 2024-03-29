return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-jest",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local neotest = require("neotest")
			neotest.setup({
				adapters = {
					require("neotest-jest")({
						jestCommand = "npm test --",
						jestConfigFile = "custom.jest.config.ts",
						env = { CI = true },
						cwd = function()
							vim.fn.getcwd()
						end,
					}),
				},
			})

			vim.keymap.set("n", "<leader>tr", function()
				neotest.run.run()
			end, { desc = "neotest - Run tests" })

			vim.keymap.set("n", "<leader>tc", function()
				neotest.run.run(vim.fn.expand("%"))
			end, { desc = "neotest - Run tests for current file" })

			vim.keymap.set("n", "<leader>tw", function()
				neotest.run.run({ jestCommand = "jest --watch " })
			end, { desc = "neotest - Run tests in watch mode" })
		end,
	},
}
