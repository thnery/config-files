-- -- treesitter config
--
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     dependencies = { "RRethy/nvim-treesitter-endwise" },
--     opts = function(_, opts)
--       opts.endwise = { enable = true }
--       opts.indent = { enable = true, disable = { "yaml", "ruby" } }
--       opts.ensure_installed = {
--         "bash",
--         "embedded_template",
--         "html",
--         "javascript",
--         "json",
--         "lua",
--         "markdown",
--         "markdown_inline",
--         "python",
--         "query",
--         "regex",
--         "ruby",
--         "tsx",
--         "typescript",
--         "vim",
--         "yaml",
--       }
--     end,
--   },
-- }

-- ~/.config/nvim/lua/plugins/treesitter.lua

require('nvim-treesitter.configs').setup({
  ensure_installed = { 'ruby', 'lua', 'vim', 'javascript', 'html', 'css' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
