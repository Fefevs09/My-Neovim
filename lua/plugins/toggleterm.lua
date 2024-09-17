local config = require("setup.editor")
return {
  {
    "nvim-lua/plenary.nvim",
  },
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {
        winbar = {
          enable = true,
          name_formatter = function(term) --  term: Terminal
            return term.name
          end,
        },
      },
      config = config.toggleterm,
    },
  },
  {
    "folke/which-key.nvim",
    opts = {},
    keys = {
      {
        "<leader>t",
        "<cmd>ToggleTerm<cr>",
        desc = "Toggle Terminal",
      },
    },
    -- opts = {
    --   defaults = {
    --     ["<leader>t"] = { name = "+terminal" },
    --   },
    -- },
  },
  {
    "akinsho/toggleterm.nvim",
    keys = {
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },
      { "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
      { "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split" },
    },
  },
}
