return {
  "nvim-neotest/neotest",
  dependencies = {
    "marilari88/neotest-vitest",
  },
  opts = {
    adapters = {
      ["neotest-vitest"] = {
        -- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
        filter_dir = function(name, rel_path, root)
          return name ~= "node_modules"
        end,
      },
    },
  },
}
