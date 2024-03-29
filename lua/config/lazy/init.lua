return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},

    {
        "github/copilot.vim",
        config = function()
            vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>", { desc = "Enable Copilot" })
            vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>", { desc = "Disable Copilot" })
        end,
    },
	"gpanders/editorconfig.nvim",

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({})
		end,
	},
	{ "tpope/vim-surround" },
	{ "tpope/vim-commentary" },
}
