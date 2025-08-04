-- telescope config

-- return {
--   "nvim-telescope/telescope.nvim",
--   tag = "0.1.8",
--   dependencies = { "nvim-lua/plenary.nvim" },
--   opts = {
--     defaults = {
--       layout_strategy = "horizontal",
--       layout_config = { prompt_position = "top" },
--       sorting_strategy = "ascending",
--       winbled = 0,
--     },
--   },
-- }

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  }
})
