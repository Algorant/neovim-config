require("mason").setup()
require("mason-lspconfig").setup()

-- Lua

require("lspconfig").lua_ls.setup{}

-- Python
require("lspconfig").pyright.setup{}
