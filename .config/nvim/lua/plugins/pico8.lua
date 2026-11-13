vim.g.pico8_config = {
	pico8_args = "-windowed 1",
	imitate_console = 1,
}

-- Close the :Pico8Run terminal buffer when PICO-8 exits
vim.api.nvim_create_autocmd("TermClose", {
	callback = function(args)
		-- terminal buffer names look like: term://<dir>//<pid>:<command>
		local cmd = vim.api.nvim_buf_get_name(args.buf):match("^term://.-//%d+:(.*)$")
		if cmd and cmd:find("pico8", 1, true) and cmd:find("-run", 1, true) then
			vim.schedule(function()
				if vim.api.nvim_buf_is_valid(args.buf) then
					vim.api.nvim_buf_delete(args.buf, { force = true })
				end
			end)
		end
	end,
})
