local map = vim.keymap.set

local options = function (desc)
  if desc ~= nil then
    return {
      noremap = true,
      silent = true,
      desc = desc
    }
  end
end

-- General
map("n", "<C-s>", "<cmd>w<cr>", options("Save file"))
map("n", "<C-q>", "<cmd>q<cr>", options("Quit"))
map("n", "<C-x>", "<cmd>q!<cr>", options("Quit without saving changes"))
map("n", "<leader>bd", "<cmd>bdelete<cr>", options("Buffer delete"))
map("n", "<C-h>", "<C-w>h", options("Go to left window"))
map("n", "<C-j>", "<C-w>j", options("Go to lower window"))
map("n", "<C-k>", "<C-w>k", options("Go to upper window"))
map("n", "<C-l>", "<C-w>l", options("Go to right window"))
map("n", "<C-Up>", "<cmd>resize +2<cr>", options("Increase window height"))
map("n", "<C-Down>", "<cmd>resize -2<cr>", options("Decrease window height"))
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>", options("Increase window width"))
map("n", "<C-Right>", "<cmd>vertical resize -2<cr>", options("Decrease window width"))
map("n", "<leader>v", "<cmd>vsplit<cr>", options("Vertical split"))
map("n", "<leader>h", "<cmd>split<cr>", options("Horizontal split"))

-- Buffers
map("n", "<C-,>", "<cmd>bprevious<cr>", options("Previous buffer"))
map("n", "<C-.>", "<cmd>bnext<cr>", options("Next buffer"))

-- Clear Search
map( { "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear Search" })
