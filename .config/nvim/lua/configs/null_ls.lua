local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

null_ls.setup {
  debug = false,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.dart_format,
    null_ls.builtins.formatting.yamlfmt,
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.formatting.shellharden,
  },
}
