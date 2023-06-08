

local plugins = {

  -- vim tmux navigator
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- mason 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
      },
    },
  },
  -- lsp config 
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins
