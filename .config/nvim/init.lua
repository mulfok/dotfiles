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
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-tree/nvim-tree.lua", 
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/shortcuts/no-neck-pain.nvim",
	{
		src = "https://github.com/obsidian-nvim/obsidian.nvim",
		version = vim.version.range "*",
	},
	"https://github.com/catgoose/nvim-colorizer.lua",
	{ src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
	"https://github.com/kawre/neotab.nvim",
	"https://github.com/RRethy/base16-nvim",
})

require("plugins.nvim-tree")
require("plugins.fzf")
require("plugins.obsidian")
require("plugins.no-neck-pain")
require("plugins.neotab")

require("plugins.simple")

-- noctalia colours
require("matugen").setup()
