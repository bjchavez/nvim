return {
  'lewis6991/gitsigns.nvim',
  init = function ()
    require('gitsigns').setup({
      signs = {
        add = { text = "+" },
        change = { text = "|" },
        delete = { text = "~" }
      }
    })
  end,
  keys ={

  }
}
