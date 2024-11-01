return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      defaults = {
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
