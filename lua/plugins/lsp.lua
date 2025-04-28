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
                    "lua_ls",        -- Lua
                    "asm_lsp",       -- Asm
                    "clangd",        -- C
                    "ast_grep",      -- Go
                    "rust_analyzer", -- Rust
                    "zls",           -- Zig
                }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.asm_lsp.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.ast_grep.setup({
                capabilities = capabilities
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })
            lspconfig.zls.setup({
                capabilities = capabilities
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end,
    },
}
