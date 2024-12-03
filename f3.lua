function executbash()
  vim.cmd(':%s/^/mv /g')
  vim.api.nvim_command('normal! gg0')
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-V>G$', true, true, true), 'n', true)

  vim.schedule(function()
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":'<,'>!bash<CR>", true, true, true), 'n', true)
  end)
end

-- Call the function
executbash()
