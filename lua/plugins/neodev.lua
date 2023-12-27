return {
  "folke/neodev.nvim",
  opts = {},
  config = function ()
    require("neodev").setup({})
    -- Settings
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          }
        }
      }
    })
  end
}
