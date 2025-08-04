-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 300

-- custom
vim.opt.winbar = "%=%m %f"
vim.opt.relativenumber = false

-- NerdTree configuration
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinSize = 30

-- CtrlP configuration
vim.g.ctrlp_map = '<c-p>'
vim.g.ctrlp_cmd = 'CtrlP'
vim.g.ctrlp_working_path_mode = 'ra'
vim.g.ctrlp_show_hidden = 1
