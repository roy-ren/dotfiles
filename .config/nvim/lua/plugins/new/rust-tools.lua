local M = {
  "simrat39/rust-tools.nvim",
  ft = "rust",
  dependencies = "neovim/nvim-lspconfig",
  opts = function()
    local on_attach = require("nvchad.configs.lspconfig").on_attach
    local capabilities = require("nvchad.configs.lspconfig").capabilities
    local on_init = require("nvchad.configs.lspconfig").on_init

    return {
      server = {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
      },
    }
  end,
  config = function(_, opts)
    require("rust-tools").setup(opts)
  end,
}

return M
