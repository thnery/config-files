-- ~/.config/nvim/init.lua

-- Load core configuration
require('config.options')
require('config.keymaps')
require('config.autocmds')

-- Load plugins
require('plugins.init')

-- Load plugin configurations
-- require('plugins.theme')
require('plugins.telescope')
require('plugins.lsp')
require('plugins.completion')
require('plugins.treesitter')
require('plugins.git')
require('plugins.statusline')
-- require('plugins.rails')

-- Theme setup
vim.cmd([[colorscheme tokyonight-night]])
