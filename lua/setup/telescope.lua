local config = {}

function config.telescope()
  local telescope = require("telescope")
  -- local fb_actions = require("telescope").extensions.file_browser.actions
  local fb_actions = require("telescope").extensions.file_browser.actions

  require("telescope").setup({
    defaults = { --[[ your defaults]]
    },
    pickers = {
      file_browser = {
        mappings = {
          ["i"] = {
            -- remap to going to home directory
            ["<C-h>"] = fb_actions.goto_home_dir,
            ["<C-x>"] = function(prompt_bufnr)
              -- your custom function
            end,
          },
          ["n"] = {
            -- unmap toggling `fb_actions.toggle_browser`
            f = false,
          },
        },
      },
    },
  })

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
end
return config
