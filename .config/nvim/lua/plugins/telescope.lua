return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- local actions = require "telescope.actions"

    -- Use this to add more results without clearing the trouble list
    -- local add_to_trouble = require("trouble.sources.telescope").add

    local open_with_trouble = require("trouble.sources.telescope").open
    local telescope = require "telescope"

    telescope.setup {
      defaults = {
        mappings = {
          i = { ["<c-t>"] = open_with_trouble },
          n = { ["<c-t>"] = open_with_trouble },
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden", -- 添加这个选项
          "--glob",
          "!.git", -- 排除 .git 文件夹
        },
        layout_config = {
          prompt_position = "bottom",
        },
      },
      pickers = {
        live_grep = {
          hidden = true,
        },
        find_files = {
          hidden = true,
          -- theme = "dropdown",
        },
      },
    }
  end,
}
