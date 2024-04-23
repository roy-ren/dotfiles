-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local M = {}

M.ui = {
  theme = "gruvbox",
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  },

  changed_themes = {
    gruvbox = require "themes.overrides.gruvbox",
  },

  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
