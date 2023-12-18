local config = {
  comment = {
    options = {
      custom_commentstring = function ()
        return vim.bo.commentstring
      end
    }
  }
}

return config
