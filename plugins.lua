local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "python",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "mypy",
        "black",
        "ruff",
        "prettier",
        "html-lsp",
        "stylua",
        "pyright"
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = true,
      },
      git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      actions = {
        open_file = {
          resize_window = true,
          window_picker = {
            chars = "12345"
          }
        }
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  }
}
return plugins
