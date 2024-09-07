return {
  {
    "nvim-lua/plenary.nvim",
  },
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = function()
        require("toggleterm").setup({
          size = 20,
          open_mapping = [[<C-/>]],
          hide_numbers = true,
          shade_filetypes = {},
          shade_terminals = true,
          shading_factor = 2,
          start_in_insert = true,
          insert_mappings = true,
          persist_size = true,
          direction = "float",
          close_on_exit = true,
          shell = vim.o.shell,
          dir = vim.fn.getcwd(),
          float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
              border = "Normal",
              background = "Normal",
            },
          },
        })
      end,
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
