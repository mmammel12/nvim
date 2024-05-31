return {
	"David-Kunz/jester",
	dependencies = { "nvim-treesitter/nvim-treesitter", "mfussenegger/nvim-dap" },
	config = function()
		vim.print("test")
		local jester = require("David-Kunz/jester").setup({
			dap = {
				type = "pwa-node",
			},
		})

		vim.keymap.set("n", "<leader>tn", function()
			jester.run()
		end, { desc = "jester - test Nearest" })

		vim.keymap.set("n", "<leader>tc", function()
			jester.run_file()
		end, { desc = "jester - run Current file" })

		vim.keymap.set("n", "<leader>tl", function()
			jester.run_last()
		end, { desc = "jester - run Last test(s)" })

		vim.keymap.set("n", "<leader>td", function()
			jester.debug()
		end, { desc = "jester - Debug under cursor" })
	end,
}
