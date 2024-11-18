return {
  -- git config
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    -- opts = configs.nvimtree,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icon
    },
    opts = {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      renderer = {
        add_trailing = false,
        highlight_git = true,
        highlight_opened_files = "none",
        root_folder_label = false,
        root_folder_modifier = table.concat({ ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }),
        icons = {
          show = {
            folder = true,
            file = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            git = {
              deleted = "",
              ignored = "◌",
              renamed = "➜",
              staged = "✓",
              unmerged = "",
              unstaged = "✗",
              untracked = "★",
            },
            folder = {
              default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
            },
          },
        },
        indent_markers = {
          enable = true,
        },
      },
      filters = {
        dotfiles = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      -- ignore_ft_on_setup = { 'dashboard' },
      open_on_tab = false,
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = false,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = false,
        update_root = true,
      },
      diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      git = {
        enable = true,
        ignore = true,
        timeout = 500,
      },
      view = {
        side = "right",
        width = 40,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
    },
  },
}
