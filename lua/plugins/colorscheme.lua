return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = false,
      italic_comments = true,
      underline_links = true,
      disable_nvimtree_bg = true,
    },
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  { "blazkowolf/gruber-darker.nvim" },
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

  {
    "navarasu/onedark.nvim",
    opts = {
      ---@type 'dark' | 'darker' | 'cool' | 'deep' | 'warm' | 'warmer'  | 'light'
      style = "dark",
      transparent = false,
      code_style = {
        comments = "none",
        keywords = "bold",
        functions = "none",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },
    },
  },
  -- Configure LazyVim to load selected colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      ---@type "solarized-osaka" | "tokyonight" | "oxocarbon" | "onedark" | "gruber-darker" | "vscode"
      colorscheme = "onedark",
    },
  },
}
