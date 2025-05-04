return {
    {
        "luukvbaal/statuscol.nvim",
        opts = {
            relculright = true
        },
        config = function()
            require("statuscol").setup(opts)
        end
    }
}
