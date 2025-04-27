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
                ensure_installed = {
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
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.asm_lsp.setup({})
            lspconfig.clangd.setup({})
            lspconfig.ast_grep.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.zls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end,
    },
}
