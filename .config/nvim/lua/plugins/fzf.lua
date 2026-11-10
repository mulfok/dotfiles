local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>ff", fzf.files,     { desc = "fzf: files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "fzf: search text" })
vim.keymap.set("n", "<leader>fb", fzf.buffers,   { desc = "fzf: buffers" })
