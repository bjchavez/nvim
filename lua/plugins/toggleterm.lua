return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require("toggleterm").setup({
      size = function (term)
        if term.direction == "vertical" then
          return 65
        elseif term.direction == "horizontal" then
          return 18
        end
      end,
      float_opts = {
        border = "curved"
      },
    })
  end
}
