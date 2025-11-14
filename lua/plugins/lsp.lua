return {
	{
		"williamboman/mason.nvim",
		config = function(_, opts)
			require("mason").setup(opts)
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- Dont forget to add servers to nvim-lspconfig as well
				mensure_installed = {
					"lua_ls", -- Lua
					"asm_lsp", -- Asm
					"clangd", -- C
					"ast_grep", -- Go
					"rust_analyzer", -- Rust
					"zls", -- Zig
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Enable LSP servers with the updated approach
			vim.lsp.enable("lua_ls", {
				capabilities = capabilities,
			})

			vim.lsp.enable("asm_lsp", {
				capabilities = capabilities,
			})

			vim.lsp.enable("clangd", {
				capabilities = capabilities,
			})

			vim.lsp.enable("ast_grep", {
				capabilities = capabilities,
			})

			vim.lsp.enable("rust_analyzer", {
				capabilities = capabilities,
			})

			vim.lsp.enable("zls", {
				capabilities = capabilities,
			})

			-- Key mappings for LSP functions are unchanged
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {})
		end,
	},
}
