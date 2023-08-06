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
        "pyright",
        "helm-ls",
        "bash-language-server",
        "shfmt",
        "shellharden",
        "vue-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
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
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      },
    },
    config = function ()
      require("custom.configs.neo-tree")
    end
  }
}

return plugins
