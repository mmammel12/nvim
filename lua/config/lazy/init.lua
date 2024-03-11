return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},

	"github/copilot.vim",
	"gpanders/editorconfig.nvim",

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({})
		end,
	},
	{ "tpope/vim-sleuth" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-commentary" },
}
