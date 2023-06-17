local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
    -- null_ls.builtins.diagnostics.ruff,
  },
  -- make the formatting automatically start if saved the file
  -- default key binding for auto formatting is <space> f m
  ------------------------ comment out ---------------------------
  -- on_attach = function(client, bufnr)
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({
  --       group = augroup,
  --       buffer = bufnr,
  --     })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         vim.lsp.buf.format({ bufnr = bufnr })
  --       end,
  --     })
  --   end
  -- end,
  ------------------------ comment out ---------------------------
}
return opts
