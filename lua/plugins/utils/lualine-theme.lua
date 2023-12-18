local catppuccin = require("plugins.utils.colors").mocha

local lualine_utils = {}

  lualine_utils.catppuccin = {
    normal = {
      a = { fg = catppuccin.base, bg = catppuccin.lavender },
      b = { fg = catppuccin.lavender, bg = catppuccin.surface1 },
      c = { fg = catppuccin.base, bg = catppuccin.base },
      z = { fg = catppuccin.base, bg = catppuccin.lavender }
    },
    insert = {
      a = { fg = catppuccin.base, bg = catppuccin.green },
      b = { fg = catppuccin.green, bg = catppuccin.surface1 },
      z = { fg = catppuccin.base, bg = catppuccin.green }
    },
    visual = {
      a = { fg = catppuccin.base, bg = catppuccin.yellow },
      b = { fg = catppuccin.yellow, bg = catppuccin.surface1 },
      z = { fg = catppuccin.base, bg = catppuccin.yellow }
    },
    replace = {
      a = { fg = catppuccin.base, bg = catppuccin.maroon },
      b = { fg = catppuccin.maroon, bg = catppuccin.surface1 },
      z = { fg = catppuccin.base, bg = catppuccin.maroon }
    },
    inactive = {
      a = { fg = catppuccin.text, bg = catppuccin.base },
      b = { fg = catppuccin.text, bg = catppuccin.base },
      c = { fg = catppuccin.base, bg = catppuccin.base },
    },
  }

  lualine_utils.separators = {
    default = { right = "", left = "" },
    block = { right = "█", left = "█" },
    arrow = { right = "", left = "" },
    triangle = { left = "", right = "" },
  }

return lualine_utils

