local theme = require "plugins.utils.lualine-theme"

local config = {
  options = {
    theme = theme.catppuccin,
    component_separators = { left = "", right = "" },
    section_separators = theme.separators.default,
    disabled_filetypes = { "NvimTree", "Lazy", "Mason", "Terminal" }
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icons_enable = true,
        icon = { ""}
      }
    },
    lualine_b = {
      {
        "filetype",
        icon_only = true,
        padding = { right = 0, left = 1 }
      },
      {
        "filename",
      }
    },
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = " ", warn = " ", info = " ", hint = "⚑ " },
      }
    },
    lualine_x = {},
    lualine_y = {
      {
        "branch",
        icon = { "" }
      }
    },
    lualine_z = {
      {
        "progress",
        padding = { left = 1, right = 1 },
        icon = { "󰦗" }
      }
    }
  }
}

return config
