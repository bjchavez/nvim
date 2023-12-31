-- NOTE: Feature to automate keymap options table
local options = function (title, desc)
  if title and desc ~= nil then
    return {
      noremap = true,
      silent = true,
      desc = title .. ": " .. desc
    }
  end
end

-- NOTE: Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, options("Telescope", "Find files"))
vim.keymap.set("n", "<leader>bf", telescope.buffers, options("Telescope", "Show buffers"))
vim.keymap.set("n", "<leader>fg", telescope.help_tags, options("Telescope", "Help tags"))
vim.keymap.set("n", "<leader>gs", telescope.git_status, options("Telescope", "Git status"))
vim.keymap.set("n", "<leader>gc", telescope.git_commits, options("Telescope", "Git commits"))
vim.keymap.set("n", "<leader>km", telescope.keymaps, options("Telescope", "Show keymaps"))
vim.keymap.set("n", "<leader>t", "<cmd>Telescope<cr>", options("Telescope", "Show telescope"))
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", options("Telescope", "File browser"))

-- NOTE:  Markdown Preview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", options("Markdown Preview", "Start markdown preview"))
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", options("Markdown Preview", "Stop markdown preview"))

-- NOTE:  Toggleterm
vim.keymap.set("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", options("ToggleTerm", "Show float terminal"))
vim.keymap.set("t", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", options("ToggleTerm", "Hide float terminal"))
