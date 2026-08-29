return {
	"j-morano/buffer_manager.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>wb",
			function()
				require("buffer_manager.ui").toggle_quick_menu()
			end,
			desc = "Toggle buffer_manager",
		},
		{
			"<leader>bs",
			function()
				require("buffer_manager.ui").toggle_quick_menu()
				vim.defer_fn(function()
					vim.fn.feedkeys("/")
				end, 50)
			end,
			desc = "Toggle buffer_manager",
		},
		{
			"<A-S-j>",
			function()
				require("buffer_manager.ui").nav_next()
			end,
			desc = "Go to next buffer",
		},
		{
			"<A-S-k>",
			function()
				require("buffer_manager.ui").nav_prev()
			end,
			desc = "Go to prev buffer",
		},
	},
	opts = {
		select_menu_item_commands = {
			v = {
				key = "<C-v>",
				command = "vsplit",
			},
			h = {
				key = "<C-h>",
				command = "split",
			},
		},
		short_file_names = true,
		show_depth = false,
	},
	config = function(_, opts)
		require("buffer_manager").setup(opts)

		vim.api.nvim_set_hl(0, "BufferManagerModified", {
			fg = "#83A598",
		})
		vim.api.nvim_set_hl(0, "BufferManagerShortcut", {
			fg = "#FB4934",
			bold = true,
		})
		vim.api.nvim_set_hl(0, "BufferManagerIndicator", {
			fg = "#928374",
			italic = true,
		})
	end,
}
