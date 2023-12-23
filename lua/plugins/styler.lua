return {
  "folke/styler.nvim",
  config = function()
    require("styler").setup({
      themes = {
        -- markdown = { colorscheme = "catppuccin-mocha" },
        -- help = { colorscheme = "catppuccin-mocha", background = "dark" },
      },
    })
  end
}
