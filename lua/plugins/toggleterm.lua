return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})

		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>tH",
			"<CMD>ToggleTerm size=10 direction=horizontal<CR>",
			{ desc = "Toggleterm Horizontal" }
		)
		keymap.set(
			"n",
			"<leader>tV",
			"<cmd>ToggleTerm size=80 direction=vertical<cr>",
			{ desc = "Toggleterm Vertical" }
		)
	end,
}
