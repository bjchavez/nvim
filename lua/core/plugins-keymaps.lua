local map = vim.keymap.set
vim.g.mapleader = " "

local opts = function (title, desc)
  if title ~= nil and desc ~= nil then
    return {
      noremap = true,
      silent = true,
      desc = title .. ": " .. desc
    }
  end
end

-- Telescope
local telescope = require("telescope.builtin")
map("n", "<leader>ff", telescope.find_files, opts("Telescope", "Find Files"))
map("n", "<leader>bf", telescope.buffers, opts("Telescope", "Show Buffers"))
map("n", "<leader>fg", telescope.help_tags, opts("Telescope", "Help Tags"))
map("n", "<leader>gs", telescope.git_status, opts("Telescope", "Git Status"))
map("n", "<leader>gc", telescope.git_commits, opts("Telescope", "Git Commits"))
map("n", "<leader>t", "<cmd>Telescope<cr>", opts("Telescope", "Show Telescope"))
map("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", opts("Telescope", "File Browser"))

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", opts("Markdown", "Start Markdown Preview"))
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", opts("Markdown", "Stop Markdown Preview"))

-- LSP
local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
  local lsp_opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, lsp_opts)
  vim.keymap.set("n", "gh", vim.lsp.buf.hover, lsp_opts)
  vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, lsp_opts)
  vim.keymap.set("n", "<leader>m", vim.diagnostic.goto_prev, lsp_opts)
end)

-- Toggleterm
map("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", opts("ToggleTerm", "Show Float Terminal"))
map("t", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", opts("ToggleTerm", "Hide Float Terminal"))
