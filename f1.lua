function entername()
  vim.api.nvim_command('normal! gg0')
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-V>G$y', true, true, true), 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-V>G$c', true, true, true), 'n', true)

end

entername()
