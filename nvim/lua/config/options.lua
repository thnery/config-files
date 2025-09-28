-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

-- Basic settings
opt.number = true
opt.relativenumber = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.updatetime = 300

-- custom
opt.winbar = "%=%m %f"
opt.relativenumber = false

-- NerdTree configuration
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinSize = 30

-- CtrlP configuration
vim.g.ctrlp_map = '<c-p>'
vim.g.ctrlp_cmd = 'CtrlP'
vim.g.ctrlp_working_path_mode = 'ra'
vim.g.ctrlp_show_hidden = 1
