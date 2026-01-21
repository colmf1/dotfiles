
local function focus_right_pane()
  if vim.fn.winnr('$') == 1 then
    vim.cmd('vsplit')
    local width = vim.o.columns
    local right_width = math.floor(width * 0.35)
    vim.cmd('vertical resize ' .. right_width)
  end
  vim.cmd('wincmd l')
end

-- Terminal in right pain 
vim.keymap.set('n', '<leader>tt', function()
  focus_right_pane()
  vim.cmd('terminal')
end
)

-- Iron Repl in right pain 
vim.keymap.set('n', '<leader>tr', function()
  focus_right_pane()
  vim.cmd('IronRepl' .. 'ipython')
end
)





