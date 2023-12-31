return {
  "folke/neodev.nvim",
  opts = {},
  ft = { "lua", "vim" },
  config = function ()
    require("neodev").setup()

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
