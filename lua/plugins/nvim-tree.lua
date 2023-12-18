return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = function ()
    return require "plugins.configs.nvim-tree-config"
  end,
  config = function(_,opts)
    require("nvim-tree").setup(opts)
  end,
}
