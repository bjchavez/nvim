local dracula_custom = require "lualine.themes.dracula"

local lualine_utils = {}

lualine_utils.dracula = function ()
  dracula_custom.normal.c.bg = ""
  dracula_custom.insert.c.bg = ""
  dracula_custom.visual.c.bg = ""
  dracula_custom.replace.c.bg = ""
  dracula_custom.inactive.c.bg = ""
  return dracula_custom
end

lualine_utils.separators = {
  default = { right = "", left = "" },
  block = { right = "█", left = "█" },
  arrow = { right = "", left = "" },
  triangle = { left = "", right = "" },
}

return lualine_utils

