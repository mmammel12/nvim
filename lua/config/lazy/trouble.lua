return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end, { desc = "trouble - Toggle trouble" })

            vim.keymap.set("n", "<leader>tn", function()
                require("trouble").next({skip_groups = true, jump = true});
            end, { desc = "trouble - Next trouble" })

            vim.keymap.set("n", "<leader>tp", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end, { desc = "trouble - Previous trouble" })

            vim.keymap.set("n", "<leader>tq", function()
                require("trouble").toggle("quickfix")
            end, { desc = "trouble - Quickfix" })
        end
    },
}
