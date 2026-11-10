require("obsidian").setup {
	legacy_commands = false, -- this will be removed in 4.0.0
	workspaces = {
		{
			name = "naga",
			path = "/win/Documents/Naga",
		},
	},
	picker = {
		name = "fzf-lua",
	},
}
