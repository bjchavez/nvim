local config = {}

config.ensure_installed = {
  "c",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "javascript",
  "typescript",
  "css",
  "html",
  "yaml",
  "bash",
  "python",
  "json",
  "markdown",
  "svelte",
}

config.sync_install = false

config.auto_install = true

config.highlight = {
  enable = true,
  additional_vim_regex_highlighting = false,
}

config.autotag = {
  enable = true,
  enable_rename = true,
  enable_close = true,
  enable_close_on_slash = true,
  filetypes = {
      "html",
      "svelte"
  }
}

config.incremental_selection = {
  enable = true,
  keymaps = {
    init_selection = "<C-space>",
    node_incremental = "<C-space>",
    scope_incremental = false,
    node_decremental = "<bs>",
  },
}

config.context_commentstring = {
  enable = true
}

return config
