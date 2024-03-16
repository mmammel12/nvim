return {
	"tpope/vim-fugitive",
	config = function()
		local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd("BufWinEnter", {
			group = ThePrimeagen_Fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local bufnr = vim.api.nvim_get_current_buf()
				vim.keymap.set("n", "<leader>ga", function()
					vim.cmd.Git("add %")
				end, { buffer = bufnr, remap = false, desc = "fugitive - add file" })
                vim.keymap.set("n", "<leader>gA", function()
                    vim.cmd.Git("add -A")
                end, { buffer = bufnr, remap = false, desc = "fugitive - add -A" })
				vim.keymap.set("n", "<leader>gp", function()
					vim.cmd.Git("push")
				end, { buffer = bufnr, remap = false, desc = "fugitive - push" })

				-- rebase always
				vim.keymap.set("n", "<leader>gl", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, { buffer = bufnr, remap = false, desc = "fugitive - pull --rebase" })

				-- NOTE: It allows me to easily set the branch i am pushing and any tracking
				-- needed if i did not set the branch up correctly
				vim.keymap.set(
					"n",
					"<leader>go",
					":Git push -u origin ",
					{ buffer = bufnr, remap = false, desc = "fugitive - push -u origin" }
				)
			end,
		})
	end,
}
