local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettierd,
  formatting.black.with({
    extra_args = {"--preview", "-l", "80"}
  }),
  formatting.stylua,
  formatting.shellharden,
  formatting.isort.with({
    extra_args = {"--profile", "black"}
  }),

  lint.ruff,
  lint.eslint
}

null_ls.setup {
  debug = true,
  sources = sources,
}

