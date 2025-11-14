return {
    {
        "rmagatti/goto-preview",
        dependencies = { "rmagatti/logger.nvim" },
        event = "BufEnter",
        config = function()
            require("goto-preview").setup()
            vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")
            vim.keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>")
        end,
    },
}
