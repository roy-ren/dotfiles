local M = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- rust
      "rust-analyzer",

      -- dart
      "dart-debug-adapter",

      -- yaml
      "yamllint",
      "yaml-language-server",

      -- bash
      "bash-language-server",
      "shellcheck",
      "shellharden",

      -- protobuf
      "buf",
      "buf-language-server",
    },
  },
}

return M
