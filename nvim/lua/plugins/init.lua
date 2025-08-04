-- ~/.config/nvim/lua/plugins/init.lua

-- Auto-install vim-plug
local vim_plug_path = vim.fn.stdpath('data') .. '/site/autoload/plug.vim'
if vim.fn.empty(vim.fn.glob(vim_plug_path)) > 0 then
  vim.fn.system({
    'curl', '-fLo', vim_plug_path, '--create-dirs',
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  })
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

-- Plugin installation with vim-plug
vim.cmd([[
call plug#begin()

" Theme
Plug 'folke/tokyonight.nvim'

" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Fuzzy finders
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'nvim-lua/plenary.nvim'
Plug 'ctrlpvim/ctrlp.vim'

" LSP and completion
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Rails specific
Plug 'tpope/vim-rails'

" Git integration
Plug 'lewis6991/gitsigns.nvim'

" Status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Search and replace
Plug 'nvim-pack/nvim-spectre'

call plug#end()
]])
