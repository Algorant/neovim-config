require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lsp-zero').preset({})



lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- Language Server
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}
require('lspconfig').lua_ls.setup{}
-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--

lsp.setup()
