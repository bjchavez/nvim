local colors = {
  font = "#282A36",
  purple = "#BD93F9",
  bg_1 = "#44475A",
  base = "#1e1e2e",
  green = "#50FA7B",
  orange = "#FFB86C",
  pink = "#FF79C6",
  text = "#F8F8F2"
}

local lualine_utils = {}

  lualine_utils.catppuccin = {
    normal = {
      a = { fg = colors.font, bg = colors.purple },
      b = { fg = colors.purple, bg = colors.bg_1 },
      c = { fg = colors.base, bg = colors.base },
      z = { fg = colors.font, bg = colors.purple }
    },
    insert = {
      a = { fg = colors.font, bg = colors.green },
      b = { fg = colors.green, bg = colors.bg_1 },
      z = { fg = colors.font, bg = colors.green }
    },
    visual = {
      a = { fg = colors.font, bg = colors.orange },
      b = { fg = colors.orange, bg = colors.bg_1 },
      z = { fg = colors.font, bg = colors.orange }
    },
    replace = {
      a = { fg = colors.font, bg = colors.pink },
      b = { fg = colors.pink, bg = colors.bg_1 },
      z = { fg = colors.font, bg = colors.pink }
    },
    inactive = {
      a = { fg = colors.text, bg = colors.base },
      b = { fg = colors.text, bg = colors.base },
      c = { fg = colors.base, bg = colors.base },
    },
  }

  lualine_utils.separators = {
    default = { right = "", left = "" },
    block = { right = "█", left = "█" },
    arrow = { right = "", left = "" },
    triangle = { left = "", right = "" },
  }

return lualine_utils

