function pastdata()

  vim.cmd(':%s/$/0/g')
  vim.cmd(':%s/$/.mp4/g')
  vim.cmd(':%s/^/   /g')
  vim.api.nvim_command('normal! gg$')
  vim.api.nvim_command('normal! 4h')
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-V>G', true, true, true), 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('g<C-a>0', true, true, true), 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-V>Gp', true, true, true), 'n', true)
  --vim.api.nvim_command('normal! gg$')
  print(vim.api.nvim_get_mode().mode)
end

pastdata()
