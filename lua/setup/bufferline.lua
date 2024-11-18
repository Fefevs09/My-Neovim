function configs.get_bufferline_options()
  local default = {
    colors = require("layers.ui.colors").get().base_30,
  }

  return {
end

function configs.bufferline()
  local bufferline = require("bufferline")

  bufferline.setup(configs.get_bufferline_options())
end
