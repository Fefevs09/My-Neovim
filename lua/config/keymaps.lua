-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
--
-- Allow clipboard copy paste in neovide
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
-- Toogle Term
vim.api.nvim_set_keymap("n", "<C-/>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-+>",
  ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>",
  { silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<C-->",
  ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>",
  { silent = true }
)
vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<space>;", "<CMD>Dashboard<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>o-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.api.nvim_set_keymap("n", "<tab>", "<S-l>", { desc = "Go to next tab", silent = true, noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "|",
  "<cmd>lua ToggleTheme()<CR>",
  { noremap = true, silent = true, desc = "Toggle Theme" }
)
-- neogit keymaps
vim.api.nvim_set_keymap(
  "n",
  "<leader>gs",
  ':lua require("neogit").open()<CR>',
  { silent = true, noremap = true, desc = "Open Neogit" }
)

vim.keymap.set("n", "<leader>gi", "<cmd>Telescope gh issues<cr>", { desc = "GitHub Issues" })
vim.keymap.set("n", "<leader>gp", "<cmd>Telescope gh pull_request<cr>", { desc = "GitHub Pull Requests" })
vim.keymap.set("n", "<leader>gg", "<cmd>Telescope gh gist<cr>", { desc = "GitHub Gists" })
vim.keymap.set("n", "<leader>gr", "<cmd>Telescope gh run<cr>", { desc = "GitHub Actions" })
vim.keymap.set("n", "<leader>gr", "<cmd>Telescope gh run<cr>", { desc = "GitHub Actions" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "GitHub Actions" })

function ToggleTheme()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end
