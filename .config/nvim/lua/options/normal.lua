local M = {}

M.setup = function()
  vim.opt.linespace = 4
  vim.wo.relativenumber = true
  vim.g.dap_virtual_text = true
  vim.o.guifont = "FiraCode_Nerd_Font:h20"
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true
end

return M
