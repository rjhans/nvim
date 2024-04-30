local config = require ("plugins.configs.lspconfig")

--local on_attach = config.on_attach
local on_attach = function (client, bufnr)
  client.resolved_capabilities.hover = false
end
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.marksman.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  filetypes = {"markdown"}
})


