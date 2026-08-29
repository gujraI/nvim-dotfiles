-- text highlight while yank
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight while yanking text",
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	pattern = "*",
	callback = function() vim.hl.on_yank() end,
})
