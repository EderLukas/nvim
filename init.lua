vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=4")
vim.cmd("set mouse=a")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=8")
vim.cmd("set relativenumber")
vim.g.mapleader = " "

-- load plugins
require("config.lazy")
require("mason").setup({})

-- load debuggers
require('dapui').setup()
require('dap-go').setup()
require('dap-python').setup("python")

-- java setup
-- require('lspconfig').jdtls.setup({})

-- load keybinds and theme
require("remap")
require("kanagawa").load("wave")
