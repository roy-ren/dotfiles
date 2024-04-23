local M = {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "markdown",
      "markdown_inline",
      "rust",
      "dart",
      "swift",
      "yaml",
      "bash",
    },
    indent = {
      enable = true,
      -- disable = {
      --   "python"
      -- },
    },
  },
}

return M
