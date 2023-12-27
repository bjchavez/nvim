return {
  "folke/styler.nvim",
  config = function()
    require("styler").setup({
      themes = {
        -- Change the colorscheme of the formats
        -- markdown = { colorscheme = "colorscheme name" }
      },
    })
  end
}
