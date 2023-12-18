local opts = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>bf", builtin.buffers, {})
map("n", "<leader>lg", builtin.live_grep, {} )
map("n", "<leader>t", "<cmd>:Telescope<cr>")

-- NvTerm
local terminal = require("nvterm.terminal")
map("n", "<A-i>", function () terminal.toggle('vertical') end, opts)
map("t", "<A-i>", function () terminal.toggle('vertical') end, opts)

-- NvimTree
map("n", "<space>.", "<cmd>NvimTreeClose<cr>", opts, { desc = "Close NvimTree" })
map("n", "<space>,", "<cmd>NvimTreeOpen<cr>", opts, { desc = "Open NvimTree" })

-- Markdown Preview
map("n", "<space>mp", "<cmd>MarkdownPreview<cr>", opts, { desc = "Start Markdown Preview" })
map("n", "<space>ms", "<cmd>MarkdownPreviewStop<cr>", opts, { desc = "Stop Markdown Preview" })
