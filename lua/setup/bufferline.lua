function configs.get_bufferline_options()
  local default = {
    colors = require("layers.ui.colors").get().base_30,
  }

  return {
    options = {
      always_show_bufferline = false,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " " or (e == "warning" and " " or " ")
          s = s .. n .. sym
        end
        return s
      end,
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    },

    highlights = {
      background = {
        fg = default.colors.grey_fg,
        bg = default.colors.black2,
      },

      -- buffers
      buffer_selected = {
        fg = default.colors.white,
        bg = default.colors.black,
        bold = true,
      },
      buffer_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      -- for diagnostics = "nvim_lsp"
      diagnostic = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      hint = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      hint_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      hint_diagnostic = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      hint_diagnostic_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      info = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      info_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      info_diagnostic = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      info_diagnostic_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      error = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      error_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      error_diagnostic = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      error_diagnostic_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      warning = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      warning_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      warning_diagnostic = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      warning_diagnostic_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      buffer = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      numbers = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      numbers_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      duplicate = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },

      duplicate_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black,
      },

      -- close buttons
      close_button = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      close_button_visible = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      close_button_selected = {
        fg = default.colors.red,
        bg = default.colors.black,
      },
      fill = {
        fg = default.colors.grey_fg,
        bg = default.colors.black2,
      },
      indicator_selected = {
        fg = default.colors.black,
        bg = default.colors.black,
      },

      -- modified
      modified = {
        fg = default.colors.red,
        bg = default.colors.black2,
      },
      modified_visible = {
        fg = default.colors.red,
        bg = default.colors.black2,
      },
      modified_selected = {
        fg = default.colors.green,
        bg = default.colors.black,
      },

      -- separators
      separator = {
        fg = default.colors.black2,
        bg = default.colors.black2,
      },
      separator_visible = {
        fg = default.colors.black2,
        bg = default.colors.black2,
      },
      separator_selected = {
        fg = default.colors.black2,
        bg = default.colors.black2,
      },
      tab_separator = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      tab_separator_selected = {
        fg = default.colors.light_grey,
        bg = default.colors.black2,
      },
      group_separator = {
        fg = default.colors.black2,
        bg = default.colors.black2,
      },
      offset_separator = {
        fg = default.colors.black2,
        bg = default.colors.black2,
      },

      -- tabs
      tab = {
        fg = default.colors.light_grey,
        bg = default.colors.one_bg3,
      },
      tab_selected = {
        fg = default.colors.black2,
        bg = default.colors.nord_blue,
      },
      tab_close = {
        fg = default.colors.red,
        bg = default.colors.black,
      },
    },
  }
end

function configs.bufferline()
  local bufferline = require("bufferline")

  bufferline.setup(configs.get_bufferline_options())
end
