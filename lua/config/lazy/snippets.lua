return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",

		dependencies = { "rafamadriz/friendly-snippets" },

		config = function()
			local ls = require("luasnip")
			ls.filetype_extend("javascript", { "jsdoc" })

			--- TODO: What is expand?
			vim.keymap.set({ "i" }, "<C-s>e", function()
				ls.expand()
			end, { silent = true, desc = "luasnip - Expand snippet" })

			vim.keymap.set({ "i", "s" }, "<C-s>;", function()
				ls.jump(1)
			end, { silent = true, desc = "luasnip - Jump to next snippet" })

			vim.keymap.set({ "i", "s" }, "<C-E>", function()
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end, { silent = true, desc = "luasnip - Change choice" })
		end,
	},
}
