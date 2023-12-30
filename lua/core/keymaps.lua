local map = vim.keymap.set
vim.g.mapleader = " "

local opts = function (desc)
  if desc ~= nil then
    return {
      noremap = true,
      silent = true,
      desc = desc
    }
  end
end

-- General
map("n", "<C-s>", "<cmd>w<cr>", opts("Save file"))
map("n", "<C-q>", "<cmd>q<cr>", opts("Quit"))
map("n", "<C-x>", "<cmd>q!<cr>", opts("Quit without saving changes"))
map("n", "<leader>bd", "<cmd>bdelete<cr>", opts("Buffer delete"))
map("n", "<C-h>", "<C-w>h", opts("Go to left window"))
map("n", "<C-j>", "<C-w>j", opts("Go to lower window"))
map("n", "<C-k>", "<C-w>k", opts("Go to upper window"))
map("n", "<C-l>", "<C-w>l", opts("Go to right window"))
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts("Increase window height"))
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts("Decrease window height"))
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>", opts("Increase window width"))
map("n", "<C-Right>", "<cmd>vertical resize -2<cr>", opts("Decrease window width"))
map("n", "<leader>v", "<cmd>vsplit<cr>", opts("Vertical split"))
map("n", "<leader>h", "<cmd>split<cr>", opts("Horizontal split"))

-- Buffers
map("n", "<C-,>", "<cmd>bprevious<cr>", opts("Previous buffer"))
map("n", "<C-.>", "<cmd>bnext<cr>", opts("Next buffer"))

-- Clear Search
map( { "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear Search" })
