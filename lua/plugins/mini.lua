return {
  "echasnovski/mini.nvim",
  version = "*",
  opts = function ()
    local conf = require "plugins.configs.mini-config"
    return conf
  end,
  config = function(_,conf)
    require('mini.comment').setup(conf.comment)
    require('mini.ai').setup()
    require('mini.cursorword').setup()
    require('mini.pairs').setup()
    require('mini.trailspace').setup()
    require('mini.surround').setup()
  end
}
