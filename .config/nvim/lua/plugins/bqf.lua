return {
  "kevinhwang91/nvim-bqf",
  ft = "qf",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("bqf").setup()
  end,
}
