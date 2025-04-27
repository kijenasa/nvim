return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            highlight = { enabled = true },
            indent = { enabled = true },
            ensure_isntalled = {
                "bash",
                "c",
                "diff",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "python",
                "toml",
                "yaml",
                "rust",
                "zig",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
