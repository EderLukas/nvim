vim.keymap.set('n', '<leader>d', function() require('dapui').toggle() end)
vim.keymap.set('n', '<leader>dk', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
