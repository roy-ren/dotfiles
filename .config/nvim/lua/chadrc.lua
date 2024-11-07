---@diagnostic disable: missing-fields
---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "sweetpastel",

  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  changed_themes = {
    all = {
      base_16 = {
        -- 选中行的背景色
        -- base02 = "#464646",
      },
    },
  },
}

M.ui = {
  -- statusline = {
  --   theme = "vscode_colored",
  -- },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
