local config = {}
local actions = require("telescope.actions")
local sorters = require("telescope.sorters")
local previewers = require("telescope.previewers")

config.defaults = {
  vimgrep_arguments = {
    "rg",
    "-L",
    "--color=never",
    "--no-heading",
    "--with-filename",
    "--line-number",
    "--column",
    "--smart-case",
  },
  prompt_prefix = " » ",
  selection_caret = "  ",
  entry_prefix = "  ",
  initial_mode = "normal",
  selection_strategy = "reset",
  sorting_strategy = "ascending",
  layout_strategy = "horizontal",
  layout_config = {
    horizontal = {
      prompt_position = "top",
      preview_width = 0.50,
      results_width = 0.8,
    },
    width = 0.87,
    height = 0.80,
    preview_cutoff = 120,
  },
  file_sorter = sorters.get_fuzzy_file,
  file_ignore_patterns = { "node_modules", "__pycache__" },
  generic_sorter = sorters.get_generic_fuzzy_sorter,
  path_display = { "truncate" },
  winblend = 0,
  border = {},
  color_devicons = true,
  set_env = { ["COLORTERM"] = "truecolor" },
  file_previewer = previewers.vim_buffer_cat.new,
  grep_previewer = previewers.vim_buffer_vimgrep.new,
  qflist_previewer = previewers.vim_buffer_qflist.new,
  buffer_previewer_maker = previewers.buffer_previewer_maker,
  mappings = {
    n = {
      ["<C-q>"] = actions.close,
      ["<leader>v"] = actions.select_vertical,
      ["<C-down>"] = actions.preview_scrolling_down,
      ["<C-up>"] = actions.preview_scrolling_up
    },
  }
}

return config
