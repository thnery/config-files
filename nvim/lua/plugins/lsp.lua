-- ruby lsp config with solargraph
--

-- return {
--   {
--     "neovim/nvim-lspconfig",
--     ---@class PluginLspOpts
--     opts = {
--       ---@type lspconfig.options
--       servers = {
--         ruby_lsp = {
--           enabled = lsp == "ruby_lsp",
--         },
--         solargraph = {
--           enabled = lsp == "solargraph",
--         },
--         rubocop = {
--           enabled = formatter == "rubocop" and lsp ~= "solargraph",
--         },
--         standardrb = {
--           enabled = formatter == "standardrb",
--         },
--       },
--     },
--   },
-- }

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
