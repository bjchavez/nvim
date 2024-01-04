local M = {}

M.color_scheme = function (color)
  color = color or "tokyonight-moon"
  vim.cmd.colorscheme(color)
end

return M
