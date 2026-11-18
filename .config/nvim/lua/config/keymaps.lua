vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>Q", ":quit!<CR>")

-- buffer management
-- vim.keymap.set("n", "<leader>bd", ":bd<CR>")
vim.keymap.set("n", "<leader>bv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>bx", ":split<CR>")

-- view errors
vim.keymap.set("n", "<leader>p", "<cmd>lua vim.diagnostic.open_float()<CR>")
