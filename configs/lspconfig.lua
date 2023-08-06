local lconfigs = require("plugins.configs.lspconfig")
local on_attach = lconfigs.on_attach
local capabilities = lconfigs.capabilities

local servers = {
  -- "mypy",
  "pyright",
  "bashls",
  "volar",
  "tailwindcss",
  "tsserver",
  "html"
}

for _, lsp in ipairs(servers) do
  require("lspconfig")[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- install helm ls

