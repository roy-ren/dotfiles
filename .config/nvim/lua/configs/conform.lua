local cachedConfig = nil
local searchedForConfig = false

local function find_config()
  if searchedForConfig then
    return cachedConfig
  end

  -- find .swiftformat config file in the working directory
  -- could be simplified if you keep it always in the root directory
  local swiftFormatConfigs = vim.fn.systemlist {
    "find",
    vim.fn.getcwd(),
    "-maxdepth",
    "2", -- if you need you can set higher number
    "-iname",
    ".swift-format",
    "-not",
    "-path",
    "*/.*/*",
  }
  searchedForConfig = true

  if vim.v.shell_error ~= 0 then
    return nil
  end

  table.sort(swiftFormatConfigs, function(a, b)
    return a ~= "" and #a < #b
  end)

  if swiftFormatConfigs[1] then
    cachedConfig = string.match(swiftFormatConfigs[1], "^%s*(.-)%s*$")
  end

  return cachedConfig
end

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    swift = { "swift_formatter" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
  log_level = vim.log.levels.ERROR,

  formatters = {
    -- OVERVIEW: Format Swift source code
    --
    -- When no files are specified, it expects the source from standard input.
    --
    -- USAGE: swift-format format [--in-place] [--configuration <configuration>] [--assume-filename <assume-filename>] [--recursive] [--ignore-unparsable-files] [--parallel] [--color-diagnostics] [--no-color-diagnostics] [<paths> ...]
    --
    -- ARGUMENTS:
    --   <paths>                 Zero or more input filenames.
    --
    -- OPTIONS:
    --   -i, --in-place          Overwrite the current file when formatting.
    --   --configuration <configuration>
    --                           The path to a JSON file containing the configuration of the linter/formatter.
    --   --assume-filename <assume-filename>
    --                           When using standard input, the filename of the source to include in diagnostics.
    --   -r, --recursive         Recursively run on '.swift' files in any provided directories.
    --   --ignore-unparsable-files
    --                           Ignores unparsable files, disabling all diagnostics and formatting for files that contain invalid syntax.
    --   -p, --parallel          Process files in parallel, simultaneously across multiple cores.
    --   --color-diagnostics/--no-color-diagnostics
    --                           Enables or disables color diagnostics when printing to standard error. The default behavior if this flag is
    --                           omitted is to use colors if standard error is connected to a terminal, and to not use colors otherwise.
    --   -h, --help              Show help information.
    swift_formatter = {
      -- This can be a string or a function that returns a string.
      -- When defining a new formatter, this is the only field that is required
      command = "swift-format",
      -- A list of strings, or a function that returns a list of strings
      -- Return a single string instead of a list to run the command in a shell
      -- "$FILENAME"
      -- "--in-place"
      args = {
        "--parallel",
        "--configuration",
        find_config() or os.getenv "HOME" .. "/.swift-format",
      },
      -- If the formatter supports range formatting, create the range arguments here
      -- range_args = function(ctx)
      --   return { "--line-start", ctx.range.start[1], "--line-end", ctx.range["end"][1] }
      -- end,
      -- Send file contents to stdin, read new contents from stdout (default true)
      -- When false, will create a temp file (will appear in "$FILENAME" args). The temp
      -- file is assumed to be modified in-place by the format command.
      stdin = true,
      -- A function that calculates the directory to run the command in
      -- cwd = require("conform.util").root_file { ".editorconfig", "package.json" },
      -- When cwd is not found, don't run the formatter (default false)
      -- require_cwd = true,
      -- When returns false, the formatter will not be used
      condition = function(ctx)
        return vim.fs.basename(ctx.filename) ~= "README.md"
      end,
      -- Exit codes that indicate success (default { 0 })
      exit_codes = { 0, 1 },
      -- Environment variables. This can also be a function that returns a table.
      env = {
        VAR = "value",
      },
      -- Set to false to disable merging the config with the base definition
      inherit = true,
      -- When inherit = true, add these additional arguments to the command.
      -- This can also be a function, like args
      prepend_args = {},
    },
  },
}

require("conform").setup(options)
