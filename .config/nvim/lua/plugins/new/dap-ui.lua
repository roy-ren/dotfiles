local M = {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dapui = require "dapui"

    dapui.setup {
      icons = {
        expanded = "▾",
        collapsed = "▸",
        current_frame = "",
      },
      mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
      },
      sidebar = {
        open_on_start = true,
        elements = {
          -- You can change the order of elements in the sidebar
          "scopes",
          "breakpoints",
          "stacks",
          "watches",
        },
        width = 40,
        position = "left", -- Can be "left" or "right"
      },
      tray = {
        open_on_start = true,
        elements = { "repl" },
        height = 10,
        position = "bottom", -- Can be "bottom" or "top"
      },
      floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil,  -- Floats will be treated as percentage of your screen.
        mappings = {
          close = { "q", "<Esc>" },
        },
        border = "single",
      },
      windows = { indent = 1 },
      controls = {
        element = "repl",
        enabled = true,
      },
      layouts = {
        {
          elements = {
            { id = "stacks",      size = 0.25 },
            { id = "scopes",      size = 0.25 },
            { id = "breakpoints", size = 0.25 },
            { id = "watches",     size = 0.25 },
          },
          position = "left",
          size = 60,
        },
        {
          elements = {
            { id = "repl", size = 1.0 },
            -- { id = "console", size = 0.5 },
          },
          position = "bottom",
          size = 10,
        },
      },
    }

    local dap = require "dap"
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
}

return M
