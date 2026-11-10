require("no-neck-pain").setup({ width = 90 })

vim.keymap.set("n", "<leader>nn", "<cmd>NoNeckPain<cr>", { desc = "Toggle centred column" })
