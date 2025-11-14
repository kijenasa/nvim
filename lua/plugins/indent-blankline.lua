return {
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { show_start = false, show_end = false },
		},
		main = "ibl",
		setup = function(_, opts)
			require("ibl").setup(opts)
		end,
	},
}
