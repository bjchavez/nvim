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
map("n", "<leader>ff", telescope.find_files, opts("Telescope", "Find files"))
map("n", "<leader>bf", telescope.buffers, opts("Telescope", "Show buffers"))
map("n", "<leader>fg", telescope.help_tags, opts("Telescope", "Help tags"))
map("n", "<leader>gs", telescope.git_status, opts("Telescope", "Git status"))
map("n", "<leader>gc", telescope.git_commits, opts("Telescope", "Git commits"))
map("n", "<leader>t", "<cmd>Telescope<cr>", opts("Telescope", "Show telescope"))
map("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", opts("Telescope", "File browser"))

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", opts("Markdown", "Start markdown preview"))
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", opts("Markdown", "Stop markdown preview"))

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
map("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", opts("ToggleTerm", "Show float terminal"))
map("t", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", opts("ToggleTerm", "Hide float terminal"))
