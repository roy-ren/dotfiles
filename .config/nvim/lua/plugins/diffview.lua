return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  event = "BufRead", -- 或者使用 'VeryLazy' 等事件
  config = function()
    require("diffview").setup {
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = "diff2_horizontal",
        },
        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
        },
      },
      hooks = {
        view_opened = function()
          print "Diffview opened"
        end,
      },
    }
  end,
}
