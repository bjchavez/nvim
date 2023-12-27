local theme = require "plugins.configs.colors-config".color_scheme

local plugins = {
  require "plugins.colorscheme",
  require "plugins.mini",
  require "plugins.gitsigns",
  require "plugins.indent",
  require "plugins.autopairs",
  require "plugins.lualine",
  require "plugins.web-devicons",
  require "plugins.nvterm",
  require "plugins.telescope",
  require "plugins.treesitter",
  require "plugins.lsp",
  require "plugins.markdown-preview",
  require "plugins.styler",
  require "plugins.todo",
  require "plugins.telescope-file-browser",
  require "plugins.neodev"
}

require("lazy").setup(plugins)
theme("duskfox")
