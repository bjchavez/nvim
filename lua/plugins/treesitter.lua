return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {},
  opts = function()
    return require "plugins.configs.treesitter-config"
  end,
  config = function(_,opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
