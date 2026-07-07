require("nvchad.configs.lspconfig").defaults()

local configs = require("nvchad.configs.lspconfig")

vim.lsp.enable({
  "html",
  "cssls",
  "pyright",
})

vim.lsp.config("pyright", {
  on_attach = configs.on_attach,
  on_init = configs.on_init,
  capabilities = configs.capabilities,
  filetypes = { "python" },
})
