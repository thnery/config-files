-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set

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

-- Rails shortcuts
keymap('n', '<leader>ra', ':A<CR>', { desc = 'Rails alternate file' })
keymap('n', '<leader>rr', ':R<CR>', { desc = 'Rails related file' })

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- Buffer navigation
keymap('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
keymap('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })

-- Quick save
keymap('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
