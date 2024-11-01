return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "wojciech-kulik/xcodebuild.nvim",
  },
  config = function()
    local dap = require "dap"
    local home_dir = os.getenv "HOME"
    local flutter_version = "3.19.5"
    local flutter_path = home_dir .. "dev_env/flutter" .. flutter_version .. "flutter"

    dap.adapters.flutter = {
      type = "executable",
      command = vim.fn.stdpath "data" .. "/mason/bin/dart-debug-adapter",
      args = { "flutter" },
    }
    dap.configurations.dart = {
      {
        type = "flutter",
        request = "launch",
        name = "Launch flutter",
        dartSdkPath = flutter_path .. "/bin/dart", -- ensure this is correct
        flutterSdkPath = flutter_path .. "/bin/flutter", -- ensure this is correct
        program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
        cwd = "${workspaceFolder}",
        -- toolArgs = { "-d", "E0AF3AF9-12E6-4919-A318-E8BC844E31CF" },
      },
    }
  end,
}
