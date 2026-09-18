-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	opts = {
		view = {
			side = "right",
		},
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
