-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
vim.g.autoformat = true
opt.smartindent = true
opt.wrap = false -- No Wrap lines
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.background = "dark"
opt.list = true

opt.listchars = { trail = "·", nbsp = "○" }

-- neovide options
local neovide = vim.g
neovide.neovide_hide_mouse_when_typing = true
neovide.neovide_input_macos_option_key_is_meta = "only_left"
-- vim.g.neovide_padding_top = 10 vim.g.neovide_working_directory = vim.fn.getcwd() -- Set Neovide's working directory to the current working directory
vim.cmd("cd " .. vim.fn.getcwd()) -- Set Neovim's current directory to match Neovide's
