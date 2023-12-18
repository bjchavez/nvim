local plugins = {
  require "plugins.colorscheme",
  require "plugins.mini",
  require "plugins.gitsigns",
  require "plugins.indent",
  require "plugins.autopairs",
  require "plugins.lualine",
  require "plugins.nvim-tree",
  require "plugins.web-devicons",
  require "plugins.nui",
  require "plugins.nvterm",
  require "plugins.telescope",
  require "plugins.treesitter",
  require "plugins.lsp",
  require "plugins.markdown-preview"
}

require("lazy").setup(plugins)

