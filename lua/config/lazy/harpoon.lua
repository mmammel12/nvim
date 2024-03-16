local local_plugins = {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup({})

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():append()
			end, { desc = "Harpoon - add current file" })
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Harpoon - toggle quick menu" })

			vim.keymap.set("n", "<C-h>", function()
				harpoon:list():select(1)
			end, { desc = "Harpoon - select first file" })
			vim.keymap.set("n", "<C-j>", function()
				harpoon:list():select(2)
			end, { desc = "Harpoon - select second file" })
			vim.keymap.set("n", "<C-k>", function()
				harpoon:list():select(3)
			end, { desc = "Harpoon - select third file" })
			vim.keymap.set("n", "<C-l>", function()
				harpoon:list():select(4)
			end, { desc = "Harpoon - select fourth file" })
		end,
	},
}

return local_plugins
