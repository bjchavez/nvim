-- local terminal = require("nvterm.terminal")
--
-- local function on_attach(bufnr)
--   local function opts(desc)
--     return { desc = "Nvterm: " .. desc, buffer = bufnr }
--   end
--
--   vim.keymap.set("n", "<A-i>", function () return require("nvterm.terminal").toggle("vertical") end, opts("open") )
--   -- vim.keymap.set("t", "<A>i", function () terminal.toggle("vertical") end, opts("close") )
-- end
--
local config = {
  terminals = {
    shell = vim.o.shell
  }
}

return config
