local configs = {}

function configs.gitsings()
  local gitsigns = require("gitsigns")
  -- git sings setup
  gitsigns.setup({
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 100,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  })
end

return configs
