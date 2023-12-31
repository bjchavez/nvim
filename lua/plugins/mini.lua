return {
  "echasnovski/mini.nvim",
  version = "*",
  opts = function ()
    return require "plugins.configs.mini-config"
  end,
  config = function(_,opts)
    require('mini.comment').setup(opts.comment)
    require('mini.cursorword').setup()
    require('mini.pairs').setup()
    require('mini.trailspace').setup()
    require('mini.move').setup()
  end
}
