local config = {
  view = {
    width = 30,
    side = "right",
    preserve_window_proportions = true
  },
  filters = {
    custom = { ".git", "node_modules", ".github", ".vscode" }
  },
  actions = {
    open_file = {
      resize_window = true
    }
  }
}

return config
