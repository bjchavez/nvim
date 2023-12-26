return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    config = function ()
      require("tokyonight").setup({
        style = "storm",
        styles = {
          comments = { italic = true },
          keywords = { italic = true }
        }
      })
    end
  },
  {
    "dracula/vim",
    lazy = false,
    priority = 1000,
    config = function()
    end
  }
}

