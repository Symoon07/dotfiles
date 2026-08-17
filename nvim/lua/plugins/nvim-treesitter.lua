vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'lua', 'python', 'go' },
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
