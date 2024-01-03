return {
  'akinsho/toggleterm.nvim',
  version = "*",
  keys = {
    {
      "<A-i>",
      "<cmd>ToggleTerm direction=float<cr>",
      desc = "ToggleTerm: Show float terminal",
      mode = { "n" }
    },
    {
      "<A-i>",
      "<cmd>ToggleTerm direction=float<cr>",
      desc = "ToggleTerm: Hide float terminal",
      mode = { "t" }
    }
  },
  opts = function ()
    return require "plugins.configs.toggleterm-config"
  end,
  config = function (_, opts)
    require("toggleterm").setup(opts)
  end
}
