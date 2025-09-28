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
