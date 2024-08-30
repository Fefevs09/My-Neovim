-- difine in this variable yours colorscheme
local listColorschemes = { "solarized-osaka", "tokyonight" }

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  -- Configure LazyVim to load selected colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = listColorschemes[2],
    },
  },
}
