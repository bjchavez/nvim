return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function ()
      require("catppuccin").setup({
        flavour = "mocha",
        styles = {
          comments = { "italic" },
          types = { "italic" }
        },
        integrations = {
          gitsigns = true,
          treesitter = true,
          treesitter_context = true,
          nvimtree = true,
          mini = true,
          indent_blankline = { enable = true },
          mason = true,
          markdown = true,
          symbols_outline = true,
          telescope = { enabled = true },
        },
        no_underline = true
      })
      -- vim.cmd[[colorscheme catppuccin]]
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("tokyonight").setup({
        style = "storm",
        styles = {
          comments = { italic = true },
          keywords = { italic = true }
        }
      })
      vim.cmd[[colorscheme tokyonight]]
    end
  }
}

