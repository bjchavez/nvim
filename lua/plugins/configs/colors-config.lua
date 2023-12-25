local M = {}

M.color_scheme = function (color)
  color = color or "dracula"
  vim.cmd.colorscheme(color)
end

return M
