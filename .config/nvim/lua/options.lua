require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- config settings
local options = {
  "options.normal",
  "options.neovide",
  "options.pod",
  "options.mappings",
}

for _, option in ipairs(options) do
  local ok, module = pcall(require, option)
  if ok then
    module.setup()
  end
end
