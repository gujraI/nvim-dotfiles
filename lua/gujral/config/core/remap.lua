-- general keybinds
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- scroll with centering
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search with centering
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- system clipboard
vim.keymap.set("n", "<leader>yl", 'V"+y')
vim.keymap.set("n", "<leader>pl", '"+p')
vim.keymap.set("v", "<leader>yl", '"+y')

-- delete keys w/o overriding clipboard
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "x", '"_x')

-- cut key
vim.keymap.set({ "n", "v" }, "<leader>d", "d")

-- move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
