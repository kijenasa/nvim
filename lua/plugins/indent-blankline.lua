return {
    {
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            indent = {
                char = "-",
            },
        },
        main = "ibl",
        setup = function(_, opts)
            require("ibl").setup(opts)
        end,
    }
}
