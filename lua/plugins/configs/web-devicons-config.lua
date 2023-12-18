local colors = {
  gray = "#9aa5ce"
}

local config = {
  override = {
    sh = {
      icon = "",
      color = colors.gray,
      name = "sh"
    },
    [".gitignore"] = {
      icon = "",
      color = colors.gray,
      name = "git"
    }
  }
}

return config
