vim.lsp.config("tinymist", {
	settings = {
		formatterMode = "typstyle",  -- formatter for Typst files
		exportPdf = "onSave",        -- onSave or onType
	},
})

-- Start tinymist whenever a Typst file is opened
vim.lsp.enable("tinymist")

-- Autocompletion popup
vim.opt.completeopt = { "menu", "menuone", "noselect", "popup" }

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
