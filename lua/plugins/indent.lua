return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  main = "ibl",
  config = function ()
    require("ibl").setup()
    require("ibl").overwrite {
      exclude = {
        filetypes = {
          "markdown",
          "text",
          "yaml",
          "toml"
        }
      }
    }
  end
}
