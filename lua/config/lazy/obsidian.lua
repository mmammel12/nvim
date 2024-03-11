return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	-- only load obsidian.nvim for markdown files in vault
	event = {
		"BufReadPre " .. vim.fn.expand("~") .. "/dev/Obsidian/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/dev/Obsidian/**.md",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/dev/Obsidian/Sync Vault",
			},
			{
				name = "work",
				path = "~/dev/Obsidian/FloQast",
			},
		},
	},
}
