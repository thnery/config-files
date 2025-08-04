-- ~/.config/nvim/lua/config/autocmds.lua

-- Auto commands for Rails
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'ruby' },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

-- Auto-close NerdTree when opening a file
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function()
    if vim.fn.winnr('$') == 1 and vim.bo.filetype == 'nerdtree' then
      vim.cmd('q')
    end
  end,
})
