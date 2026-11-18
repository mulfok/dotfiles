-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.statuscolumn = table.concat({
	"%s",                                                  -- signs (git, diagnostics, etc.)
	"%=",                                                  -- push the numbers to the right
	"%{%v:relnum == 0 ? '%#CursorLineNr#' : '%#LineNr#'%}", -- highlight: cursor line vs others
	"%1{v:virtnum == 0 ? v:lnum : ''}",                    -- absolute number
	"%3{v:virtnum == 0 ? v:relnum : ''}",                  -- relative number
	" ",
})

vim.opt.conceallevel = 2
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

vim.opt.mouse = ""

