local configs = {}

configs.nvimtree = function()
  local nvimtree = require("nvim-tree")
  nvimtree.setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    renderer = {
      add_trailing = false,
      highlight_git = false,
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
      dotfiles = true,
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
      side = "left",
      width = 30,
    },
    actions = {
      open_file = {
        resize_window = true,
      },
    },
  })
end

configs.toggleterm = function()
  local toggleterm = require("toggleterm")
  toggleterm.setup({
    size = function(term)
      if term.direction == "horizontal" then
        return 17
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = false, -- whether or not the open mapping applies in insert mode
    persist_size = false,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
  })
end

return configs
