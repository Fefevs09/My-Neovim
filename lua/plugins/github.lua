return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-github.nvim",
    },
    config = function()
      require("telescope").setup({
        extensions = {
          gh = {
            -- Configure github extension settings here
            issues = {
              filter_by = {
                labels = { "bug", "feature" }                   -- Filter issues by labels
              }
            },
            pull_requests = {
              filter_by = {
                state = "open"                   -- Only show open PRs
              }
            }
          }
        }
      })
      -- Load the github extension
      require("telescope").load_extension("gh")
    end,
  }
}
