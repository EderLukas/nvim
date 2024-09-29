vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=2")
vim.cmd("set mouse=a")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=8")
vim.g.mapleader = " "

-- load plugins
require("config.lazy")
require("mason").setup({})

-- load debuggers
require('dapui').setup()
require('dap-go').setup()
require('dap-python').setup("python")

-- load keybinds and theme
require("remap")
require("kanagawa").load("wave")
