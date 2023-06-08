
local config = require("plugins.configs.lspconfig")

-- make call back 
local on_attach = config.on_attach
local capabilities = config.capabilities

-- import lspconfig plugin 
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
