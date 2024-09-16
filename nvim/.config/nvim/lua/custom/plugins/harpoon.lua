return {
	{
		'ThePrimeagen/harpoon',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		lazy = false,
		keys = {
			{
				"<leader>a",
				"<cmd> lua require('harpoon.mark').add_file() <cr>",
				mode = "n",
				desc =
				"Harpoon [a]dd mark"
			},
			{ "<C-h>", '<cmd> lua require("harpoon.ui").nav_file(1) <cr>', mode = "n" },
			{ "<C-q>", '<cmd> lua require("harpoon.ui").nav_file(2) <cr>', mode = "n" },
			{ "<C-s>", '<cmd> lua require("harpoon.ui").nav_file(4) <cr>', mode = "n" },
			{ "<C-n>", '<cmd> lua require("harpoon.ui").nav_file(3) <cr>', mode = "n" },
			{
				"<C-e>",
				"<cmd> lua require('harpoon.ui').toggle_quick_menu() <cr>",
				mode = "n",
				desc =
				"Harpoon toogle quick menu"
			},
		},
		-- config = function()
		--	require("telescope").load_extension('harpoon')
		-- end
	}
}
