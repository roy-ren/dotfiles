local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "ruby_lsp",
  -- "sourcekit",
  "lua_ls",
  "yamlls",
  "bashls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

local util = require "lspconfig/util"

lspconfig["sourcekit"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp",
  },
  root_dir = function(filename, _)
    return util.root_pattern "buildServer.json"(filename)
      or util.root_pattern("*.xcodeproj", "*.xcworkspace")(filename)
      or util.find_git_ancestor(filename)
      or util.root_pattern "Package.swift"(filename)
  end,
}
