vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=2")
vim.cmd("set mouse=a")
vim.cmd("set termguicolors")
vim.g.mapleader = " "

require("config.lazy")
require("mason").setup({})
require("remap")
require("kanagawa").load("wave")

