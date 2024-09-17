local configs = require("setup.ui")
return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = configs.lualine(),
    event = { "BufRead", "VimEnter" },
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    branch = "main",
    config = configs.bufferline(),
    event = "BufRead",
  },
}
