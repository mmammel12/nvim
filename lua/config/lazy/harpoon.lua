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
            vim.keymap.set("n", "<leader>rm", function ()
                harpoon:list():remove()
            end, { desc = "Harpoon - remove current file" })
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, { desc = "Harpoon - toggle quick menu" })
		end,
	},
}

return local_plugins
