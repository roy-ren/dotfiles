return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require "configs.conform"

    local conform = require "conform"

    vim.keymap.set({ "v" }, "<leader>fm", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
