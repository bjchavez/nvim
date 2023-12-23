local opts = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "

-- Telescope
local telescope = require("telescope.builtin")
map("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
map("n", "<leader>bf", telescope.buffers, { desc = "Buffers" })
map("n", "<leader>fg", telescope.help_tags, { desc = "Help Tags" })
map("n", "<leader>gs", telescope.git_status, { desc = "Git Status" })
map("n", "<leader>gc", telescope.git_commits, { desc = "Git Commits" })
map("n", "<leader>t", "<cmd>Telescope<cr>")
map("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", opts)

-- NvTerm
local terminal = require("nvterm.terminal")
map("n", "<A-i>", function () terminal.toggle('vertical') end, opts)
map("t", "<A-i>", function () terminal.toggle('vertical') end, opts)

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", opts, { desc = "Start Markdown Preview" })
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", opts, { desc = "Stop Markdown Preview" })

-- LSP
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
  local lsp_opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, lsp_opts)
  vim.keymap.set("n", "gh", vim.lsp.buf.hover, lsp_opts)
  vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, lsp_opts)
  vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, lsp_opts)
end)
