local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls",
      }
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    'dracula/vim',
    lazy = false,
  },
  'wbthomason/packer.nvim',
  'glepnir/lspsaga.nvim',
  'nvim-lua/plenary.nvim',
  'mfussenegger/nvim-dap',

  -- rust
  {
    'simrat39/rust-tools.nvim',
  },
}

return plugins
