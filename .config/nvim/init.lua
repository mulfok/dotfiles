-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "

-- the best!
require("colemak").setup()

require("config.options")
require("config.keymaps")
require("config.autocmds")

-- plugins and packs
vim.pack.add({
	-- plugins
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/shortcuts/no-neck-pain.nvim" },
	{ src = "https://github.com/catgoose/nvim-colorizer.lua" },
	{ src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
	{ src = "https://github.com/kawre/neotab.nvim" },
	{ src = "https://github.com/phha/zenburn.nvim" },
	{ src = "https://github.com/typicode/bg.nvim" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },

	-- lsp
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require("plugins.nvim-tree")
require("plugins.fzf")
require("plugins.no-neck-pain")
require("plugins.neotab")
require("plugins.colorizer")
require("plugins.lsp")

require("plugins.simple")

-- theme
-- NOTE: background opacity is set in zshrc
require("zenburn").setup()
vim.cmd.colorscheme("zenburn")

