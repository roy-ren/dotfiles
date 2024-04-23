local M = {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = function()
    local on_attach = require("nvchad.configs.lspconfig").on_attach
    local capabilities = require("nvchad.configs.lspconfig").capabilities
    local on_init = require("nvchad.configs.lspconfig").on_init

    return {
      lsp = {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
      },
    }
  end,
  config = function(_, opts)
    require("flutter-tools").setup(opts)
  end,
}

return M
