local function on_attach(bufnr)
	local api = require("nvim-tree.api")
	api.config.mappings.default_on_attach(bufnr)

	-- Free up e and u so they move down/up (Colemak remaps)
	pcall(vim.keymap.del, "n", "e", { buffer = bufnr })
	pcall(vim.keymap.del, "n", "u", { buffer = bufnr })
end

require("nvim-tree").setup({
	on_attach = on_attach,
	view = { width = 48 },
	filters = { dotfiles = false },
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>",   { desc = "Toggle file tree" })
vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFile<cr>", { desc = "Reveal current file in tree" })
