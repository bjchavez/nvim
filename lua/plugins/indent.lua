return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  main = "ibl",
  config = function ()
    require("ibl").setup()
  end
}
