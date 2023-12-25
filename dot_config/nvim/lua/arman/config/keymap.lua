vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- vim.keymap.set("n", "<C-S>", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("v", "<S-k>", ":move '<-2<CR>gv-gv")
vim.keymap.set("v", "<S-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("v", "<S-h>", "<gv")
vim.keymap.set("v", "<S-l>", ">gv")
vim.keymap.set("n", "<leader>nh", vim.cmd.nohl)
vim.keymap.set("n", "<A-1>", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<A-2>", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<A-3>", ":ToggleTerm direction=vertical<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>nh<CR>", ":nohl")
vim.keymap.set("n", "<leader>t", ":!")
-- vim.keymap.set("n", "<leader>bp" , ":bp<CR>")
-- vim.keymap.set("n", "<leader>bn" , ":bn<CR>")
-- Harpoon

