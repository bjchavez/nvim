return {
  'nvim-tree/nvim-web-devicons',
  opts = function ()
    return require "plugins.configs.web-devicons-config"
  end,
  config = function (_,opts)
    require('nvim-web-devicons').setup(opts)
  end
}
