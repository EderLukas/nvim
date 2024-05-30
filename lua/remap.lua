vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>fe', vim.cmd.Explore)
vim.keymap.set('n', '<leader>pac', vim.cmd.PackerSync)
vim.keymap.set('n', '<leader>t', vim.cmd.term)

vim.keymap.set('n', '<leader>f', '10l')
vim.keymap.set('n', '<leader>v', '10h')
vim.keymap.set('t', '<leader>tt', '<C-\\><C-n>', { noremap = true, silent = true })
