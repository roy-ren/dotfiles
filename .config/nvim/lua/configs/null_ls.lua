local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

-- local example_source = {
--   name = "example_source",
--   filetypes = { "lua" },
--   methods = { null_ls.methods.FORMATTING },
--   generator = {
--     fn = function()
--       return "I am a source!"
--     end,
--   },
--   id = 1,
-- }
--
-- null_ls.register(example_source)

null_ls.setup {
  debug = true,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.dart_format.with { extra_args = { "--line-length", "80" } },
    null_ls.builtins.formatting.yamlfmt,
    -- example_source,
    -- null_ls.builtins.code_actions.shellcheck,
    -- null_ls.builtins.diagnostics.shellcheck,
    -- null_ls.builtins.formatting.shellharden,
  },
}
