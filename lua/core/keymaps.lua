local opts = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "

-- General
map( { "n", "i", "v", "s" }, "<C-s>", "<cmd>w<cr>", opts, { desc = "Save file" })
map("n", "<C-q>", "<cmd>q<cr>", opts)
map("n", "<C-x>", "<cmd>q!<cr>", opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", opts)
map("n", "<C-h>", "<C-w>h", {desc = "Go to left window"})
map("n", "<C-j>", "<C-w>j", {desc = "Go to lower window"})
map("n", "<C-k>", "<C-w>k", {desc = "Go to upper window"})
map("n", "<C-l>", "<C-w>l", {desc = "Go to right window"})
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map({"n", "t"}, "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
map({"n", "t"}, "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<leader>v", "<cmd>vsplit<cr>", opts)
map("n", "<leader>h", "<cmd>split<cr>", opts)

-- Buffers
map("n", "<C-,>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<C-.>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Clear Search
map( { "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear Search" })
