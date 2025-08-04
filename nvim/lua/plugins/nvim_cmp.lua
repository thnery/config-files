return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = {
      completeopt = { "menu", "menuone", "noinsert", "noselect" },
    },
  },
}
