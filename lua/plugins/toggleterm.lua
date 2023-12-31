return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = function ()
    return require "plugins.configs.toggleterm-config"
  end,
  config = function (_, opts)
    require("toggleterm").setup(opts)
  end
}
