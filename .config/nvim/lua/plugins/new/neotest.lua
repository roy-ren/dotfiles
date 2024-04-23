local M = {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "sidlatau/neotest-dart",
    "rouge8/neotest-rust",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-dart" {
          command = "flutter", -- Command being used to run tests. Defaults to `flutter`
          -- Change it to `fvm flutter` if using FVM
          -- change it to `dart` for Dart only tests
          use_lsp = true, -- When set Flutter outline information is used when constructing test name.
          custom_test_method_names = { "blocTest" },
        },
        require "neotest-rust" {
          args = { "--no-capture" },
          dap_adapter = "lldb",
        },
      },
    }
  end,
}

return M
