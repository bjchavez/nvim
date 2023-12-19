local opts = { noremap = true, silent = true }
local map = vim.keymap.set
vim.g.mapleader = " "

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>bf", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>gs", builtin.git_status, { desc = "Git Status" })
map("n", "<leader>gc", builtin.git_commits, { desc = "Git Commits" })
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

-- LSP
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
  local lsp_opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, lsp_opts)
  vim.keymap.set("n", "gh", vim.lsp.buf.hover, lsp_opts)
  vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, lsp_opts)
  vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, lsp_opts)
end)
