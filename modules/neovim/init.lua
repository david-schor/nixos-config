vim.keymap.set({'n', 'x', 'o'}, 'gy', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x', 'o'}, 'gp', '"+p', {desc = 'Paste clipboard text'})

vim.o.wrap = false

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.number = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'
