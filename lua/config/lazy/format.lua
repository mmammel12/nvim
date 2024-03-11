return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local formatConfig = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 500,
		}

		conform.setup({
			formatters_by_ft = {
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
				css = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				yaml = { { "prettierd", "prettier" } },
				markdown = { { "prettierd", "prettier" } },
				lua = { "stylua" },
			},
			format_on_save = formatConfig,
			-- Conform will notify you when a formatter errors
			notify_on_error = true,
		})

		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format(formatConfig)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}