require("neotab").setup({
	tabkey = "",  -- we bind Tab ourselves below
})

vim.keymap.set("i", "<Tab>", function()
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	local line = vim.api.nvim_get_current_line()

	if line:sub(col + 1, col + 2) == "]]" then
		-- two closing brackets right after the cursor: hop over both
		vim.api.nvim_win_set_cursor(0, { row, col + 2 })
	else
		require("neotab").tabout()  -- neotab's normal behaviour
	end
end, { desc = "Jump out of ]] or neotab" })

