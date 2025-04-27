return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            highlight = { enabled = true },
            indent = { enabled = true },
--            ensure_isntalled = { -- Not needed with auto_install
--                "bash",
--                "c",
--                "diff",
--                "html",
--                "javascript",
--                "json",
--                "lua",
--                "markdown",
--                "python",
--                "toml",
--                "yaml",
--                "rust",
--                "zig",
--            },
            auto_install = { true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    }
}
