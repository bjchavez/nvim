return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  keys = {
    dependencies = { 'nvim-lua/plenary.nvim' },
    {
      "<leader>ff",
      function ()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true
        })
      end,
      desc = "Telescope: Find files"
    },
    {
      "<leader>bf",
      function ()
        local builtin = require("telescope.builtin")
        builtin.buffers()
      end,
      desc = "Telescope: Show buffers"
    },
    {
      "<leader>fg",
      function ()
        local builtin = require("telescope.builtin")
        builtin.help_tags()
      end,
      desc = "Telescope: Help tags"
    },
    {
      "<leader>gs",
      function ()
        local builtin = require("telescope.builtin")
        builtin.git_status()
      end,
      desc = "Telescope: Git status"
    },
    {
      "<leader>gc",
      function ()
        local builtin = require("telescope.builtin")
        builtin.git_commits()
      end,
      desc = "Telescope: Git commits"
    },
    {
      "<leader>km",
      function ()
        local builtin = require("telescope.builtin")
        builtin.keymaps()
      end,
      desc = "Telescope: Keymaps"
    },
    {
      "<leader>tl",
      "<cmd>Telescope<cr>",
      desc = "Telescope"
    },
  },
  opts = function()
    return require "plugins.configs.telescope-config"
  end,
  config = function(_,opts)
    require("telescope").setup(opts)
  end
}
