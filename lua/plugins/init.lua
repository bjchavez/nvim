local theme = require "plugins.configs.colors-config".color_scheme

local plugins = {
  require "plugins.colorscheme",
  require "plugins.mini",
  require "plugins.gitsigns",
  require "plugins.indent",
  require "plugins.autopairs",
  require "plugins.lualine",
  require "plugins.web-devicons",
  require "plugins.telescope",
  require "plugins.treesitter",
  require "plugins.lsp",
  require "plugins.markdown-preview",
  require "plugins.todo",
  require "plugins.neodev",
  require "plugins.toggleterm"
}

require("lazy").setup(plugins)
theme("tokyonight-night")
