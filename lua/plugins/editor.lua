local configs = require("setup.editor")
return {
  -- git config
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = configs.nvimtree,
    -- opts = configs.nvimtree,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icon
    },
  },
}
