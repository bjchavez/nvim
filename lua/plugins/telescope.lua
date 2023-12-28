return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = function()
    return require "plugins.configs.telescope-config"
  end,
  config = function(_,opts)
    local telescope = require "telescope"
    telescope.setup(opts)
  end
}
