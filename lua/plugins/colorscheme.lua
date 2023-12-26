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
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic, bold"
          }
        }
      })
    end
  }
}

