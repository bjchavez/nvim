local config = {
  size = function (term)
    if term.direction == "vertical" then
      return 70
    elseif term.direction == "horizontal" then
      return 18
    end
  end,
  float_opts = {
    border = "curved"
  }
}

return config
