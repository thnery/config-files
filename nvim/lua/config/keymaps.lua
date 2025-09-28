-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = ","

-- NERDTree
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { desc = 'Toggle NerdTree' })

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })

-- LSP keymaps
keymap('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
keymap('n', 'K', vim.lsp.buf.hover, { desc = 'Hover documentation' })
keymap('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
keymap('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
keymap('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })
keymap('n', 'gr', vim.lsp.buf.references, { desc = 'References' })

-- LSP Diagnostics
keymap('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Rails shortcuts
keymap('n', '<leader>ra', ':A<CR>', { desc = 'Rails alternate file' })
keymap('n', '<leader>rr', ':R<CR>', { desc = 'Rails related file' })

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- Buffer navigation
keymap('n', '<C-l>', ':bnext<CR>', { desc = 'Next buffer' })
keymap('n', '<C-k>', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap('n', '<C-d>', ':bdelete<CR>', { desc = 'Delete buffer' })

-- Quick save
keymap('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Clipboard operations
keymap('v', '<leader>y', '"+y', { desc = 'Copy to system clipboard' })
