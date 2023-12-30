local map = vim.keymap.set

local options = function (title, desc)
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
map("n", "<leader>ff", telescope.find_files, options("Telescope", "Find files"))
map("n", "<leader>bf", telescope.buffers, options("Telescope", "Show buffers"))
map("n", "<leader>fg", telescope.help_tags, options("Telescope", "Help tags"))
map("n", "<leader>gs", telescope.git_status, options("Telescope", "Git status"))
map("n", "<leader>gc", telescope.git_commits, options("Telescope", "Git commits"))
map("n", "<leader>km", telescope.keymaps, options("Telescope", "Show keymaps"))
map("n", "<leader>t", "<cmd>Telescope<cr>", options("Telescope", "Show telescope"))
map("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", options("Telescope", "File browser"))

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", options("Markdown Preview", "Start markdown preview"))
map("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", options("Markdown Preview", "Stop markdown preview"))

-- Toggleterm
map("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", options("ToggleTerm", "Show float terminal"))
map("t", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", options("ToggleTerm", "Hide float terminal"))
