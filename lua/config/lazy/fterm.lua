return {
	"numToStr/FTerm.nvim",
	config = function()
		require("FTerm").setup({})

		vim.keymap.set("n", "<C-i>", '<CMD>lua require("FTerm").toggle()<CR>', { desc = "Open FTerm" })
		vim.keymap.set("t", "<C-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = "Close FTerm" })
	end,
}
