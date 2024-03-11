return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-jest",
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

			vim.keymap.set("n", "<leader>tc", function()
				neotest.run.run()
			end)

			vim.keymap.set("n", "<leader>tf", function()
				neotest.run.run(vim.fn.expand("%"))
			end)

			vim.keymap.set("n", "<leader>tw", function()
				neotest.run.run({ jestCommand = "jest --watch " })
			end)
		end,
	},
}
