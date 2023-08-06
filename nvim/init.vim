lua require("basic")
lua require("keymap")
"load plugins
colorscheme zephyr
set background=dark "or light if you want light mode
set termguicolors
lua require('plugins')
lua require("plugin-config/bufferline")
lua require("plugin-config/nvim-tree")
lua require'lspconfig'.pyright.setup{}
lua require'lspconfig'.clangd.setup{}
lua require("lsp/nvim-cmp")

