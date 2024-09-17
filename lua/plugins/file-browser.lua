return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local fb_actions = require("telescope._extensions.file_browser.actions")

    telescope.setup({
      extensions = {
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              ["<C-w>"] = function()
                vim.cmd("normal vbd")
              end,
              ["<Esc>"] = require("telescope.actions").close,
            },
            ["n"] = {
              ["n"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
            },
          },
          initial_mode = "insert",
        },
      },
    })

    telescope.load_extension("file_browser")

    vim.api.nvim_set_keymap(
      "n",
      "<space>.",
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      { noremap = true }
    )
  end,
}
