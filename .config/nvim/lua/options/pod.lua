local M = {}

-------------------------------------- autocmd ------------------------------------------
M.setup = function()
  local autocmd = vim.api.nvim_create_autocmd

  autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "Podfile, *podspec, Podfile.lock",
    command = "set filetype=ruby",
  })
end

return M
