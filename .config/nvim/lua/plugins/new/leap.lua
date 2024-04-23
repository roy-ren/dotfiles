local M = {
  "ggandor/leap.nvim",
  lazy = false,
  dependencies = {
    { "tpope/vim-repeat" },
  },
  config = function()
    require("leap").add_default_mappings()
  end,
}

return M
