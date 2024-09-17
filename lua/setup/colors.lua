local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.setup = function()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  local options = require("setup.options")
  vim.o.termguicolors = true
  vim.g.colors_name = options.theme

  -- unload to force reload
  package.loaded["setup.highlights" or false] = nil
  -- then load the highlights
  require("setup.highligths").setup()
end

-- returns a table of colors for given or current theme
M.get = function()
  local options = require("setup.options")
  return require("setup.themes." .. options.theme)
end

return M
