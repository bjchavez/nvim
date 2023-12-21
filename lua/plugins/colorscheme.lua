return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = true,
    config = function ()
      require("catppuccin").setup({
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

    end
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    name = "onedark",
    config = function ()
      require("onedark").setup({
        style = "deep",
        code_style = {
          comments = "italic",
          keyword = "italic"
        },
        lualine = {
          transparent = true
        },
        diagnostics = {
          darker = false,
          background = false,
          undercurl = false
        }
      })
      require("onedark").load()
    end
  }
}

