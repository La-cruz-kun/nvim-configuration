vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=8")
vim.cmd("set softtabstop=0")
vim.cmd("set shiftwidth=4")
vim.cmd("vnoremap <C-c> \"*y :let @+=@*<CR>")
vim.cmd("map <C-v> \"+P")
vim.g.mapleader = " "


