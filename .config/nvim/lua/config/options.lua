vim.opt.termguicolors = true
vim.cmd.colorscheme("vim")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- for transparency in terminal

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.conceallevel = 2
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
