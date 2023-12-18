return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    return require "plugins.configs.lualine-config"
  end,
  config = function(_,opts)
    require("lualine").setup(opts)
  end
}
