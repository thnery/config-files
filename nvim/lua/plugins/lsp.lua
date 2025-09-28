-- ~/.config/nvim/lua/plugins/lsp.lua

-- Mason setup for LSP servers
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'solargraph' },
})

-- LSP configuration
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

-- Ruby LSP (Solargraph)
lspconfig.solargraph.setup({
  capabilities = capabilities,
  settings = {
    solargraph = {
      diagnostics = true,
    }
  }
})
