-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = true
vim.opt.smartindent = true
vim.opt.wrap = false -- No Wrap lines
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.background = "dark"

-- neovide options
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_input_macos_option_key_is_meta = "only_left"
-- vim.g.neovide_padding_top = 10 vim.g.neovide_working_directory = vim.fn.getcwd() -- Set Neovide's working directory to the current working directory
vim.cmd("cd " .. vim.fn.getcwd()) -- Set Neovim's current directory to match Neovide's
