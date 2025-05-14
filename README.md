# nvim
## Plugins
```
lukas-reineke/indent-blankline.nvim
hrsh7th/nvim-cmp
L3MON4D3/LuaSnip
williamboman/mason.nvim
williamboman/mason-lspconfig.nvim
neovim/nvim-lspconfig
nvim-neo-tree/neo-tree.nvim
nvimtools/none-ls.nvim
nvim-telescope/telescope.nvim
nvim-telescope/telescope-ui-select.nvim
folke/tokyonight.nvim
nvim-treesitter/nvim-treesitter
lukas-reineke/indent-blankline.nvim
rmagatti/goto-preview
nvim-lualine/lualine.nvim
```

## Keybinds
### LSP
```
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {})
```
### None-LS
```
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
```
### Telescope
```
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
```
### Completions
```
["<C-b>"] = cmp.mapping.scroll_docs(-4),
["<C-f>"] = cmp.mapping.scroll_docs(4),
["<C-Space>"] = cmp.mapping.complete(),
["<C-e>"] = cmp.mapping.abort(),
["<CR>"] = cmp.mapping.confirm({ select = true }),
```
### Neotree
```
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
```
### goto-preview
```
vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")
vim.keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>")
```
