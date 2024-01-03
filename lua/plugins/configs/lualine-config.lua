local theme = require "plugins.utils.lualine-util"

local config = {
  options = {
    theme = "tokyonight",
    component_separators = { left = "", right = "" },
    section_separators = theme.separators.arrow,
    disabled_filetypes = { "Lazy", "Mason", "Terminal" }
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icons_enable = true,
        icon = { ""}
      }
    },
    lualine_b = {},
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = " ", warn = " ", info = " ", hint = "⚑ " },
      }
    },
    lualine_x = {
      {
        "filetype",
        padding = { right = 1, left = 1 }
      }
    },
    lualine_y = {
      {
        "branch",
        icon = { "" }
      }
    },
    lualine_z = {
      {
        "location",
        padding = { left = 1, right = 1 }
      }
    }
  },
  tabline = {
    lualine_a = {
      "filename"
    }
  }
}

return config
