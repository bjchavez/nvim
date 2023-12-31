local config = {
  comment = {
    options = {
      custom_commentstring = function ()
        return vim.bo.commentstring
      end,
      ignore_blank_line = true
    }
  },
}

return config
