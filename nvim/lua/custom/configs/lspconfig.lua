
local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")


-- python lspconfig
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})


-- rust lspconfig
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml")
})
