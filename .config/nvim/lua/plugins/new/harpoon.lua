local M = {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup {
      menu = {
        -- width = vim.api.nvim_win_get_width(0) / 2,
        width = 120,
      },
    }
  end,
}

return M
