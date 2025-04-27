return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,      -- Lua
                    null_ls.builtins.formatting.black,       -- Python
                    null_ls.builtins.formatting.isort,       -- Python
                    null_ls.builtins.formatting.clang_format -- C
				},
			})

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
