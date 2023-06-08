

local plugins = {
  -- vim and tmux navigation installed
  {
    "christoomey/vim-tmux-navigator",
    lazy = false, -- no idea
  },
  -- mason install 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
      },
    },
  },
  -- lsp installed 
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins

-- To install/update package, :Lazy sync
-- To quit Lazy Package manager, type q
