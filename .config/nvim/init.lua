-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "

-- the best!
require("colemak").setup()

require("config.keymaps")
require("config.options")
require("config.autocmds")

-- plugins and packs
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/shortcuts/no-neck-pain.nvim" },
	{ src = "https://github.com/obsidian-nvim/obsidian.nvim", version = vim.version.range "*" },
	{ src = "https://github.com/catgoose/nvim-colorizer.lua" },
	{ src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
	{ src = "https://github.com/kawre/neotab.nvim" },
	{ src = "https://github.com/RRethy/base16-nvim" },
})

require("plugins.nvim-tree")
require("plugins.fzf")
require("plugins.obsidian")
require("plugins.no-neck-pain")
require("plugins.neotab")
require("plugins.colorizer")

require("plugins.simple")

-- noctalia colours
require("matugen").setup()
