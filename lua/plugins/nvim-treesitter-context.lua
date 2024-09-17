return {
  "nvim-treesitter/nvim-treesitter-context",
  enabled = false,
  event = "VeryLazy",
  opts = function()
    local tsc = require("treesitter-context")

    LazyVim.toggle.map("<leader>ut", {
      name = "Treesitter Context",
      get = tsc.enabled,
      set = function(state)
        if state then
          tsc.enable()
        else
          tsc.disable()
        end
      end,
    })

    return { mode = "cursor", max_lines = 3 }
  end,
}