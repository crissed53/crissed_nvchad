local lconfigs = require("plugins.configs.lspconfig")
local on_attach = lconfigs.on_attach
local capabilities = lconfigs.capabilities

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

local servers = {
  -- "mypy",
  "pyright",
  "lua_ls",
  "bashls",
  "dockerls",
  "helm_ls",
  "pyright",
  "html",
  "tailwindcss",
  -- "tsserver"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  init_options = {
    volar = {
      autoClosingTags = true,
      takeOverMode = {
        enabled = true
      }
    },
    vue = {
      inlayHints = {
        inlineHandlerLeading = true,
        missingProps = true,
        optionsWrapper = true
      },
      updateImportsOnFileMove = {
        enabled = true
      }
    }
  }

}

-- install helm ls

