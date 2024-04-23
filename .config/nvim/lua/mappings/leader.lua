local map = vim.keymap.set

map("n", "<leader> ", "<cmd> Telescope find_files <cr>", { desc = "Find files" })

map("n", "<leader>a", function()
  require("harpoon.mark").add_file()
end, { desc = "toggle harpoon quick menu" })

map("n", "<leader>xx", function()
  require("trouble").open()
end, { desc = "trouble toggle" })

map("n", "<leader>xw", function()
  require("trouble").open "workspace_diagnostics"
end, { desc = "trouble toggle workspace_diagnostics" })

map("n", "<leader>xd", function()
  require("trouble").open "document_diagnostics"
end, { desc = "trouble toggle document_diagnostics" })

map("n", "<leader>xq", function()
  require("trouble").open "quickfix"
end, { desc = "trouble toggle quickfix" })

map("n", "<leader>xl", function()
  require("trouble").open "loclist"
end, { desc = "trouble toggle loclist" })

map("n", "<leader>nl", function()
  require("noice").cmd "last"
end, { desc = "展示最后一条 Noice 消息" })

map("n", "<leader>nh", function()
  require("noice").cmd "history"
end, { desc = "展示 Noice 消息历史" })

map("n", "<leader>nt", "<cmd>Telescope notify<cr>", { desc = "Telescope notify" })

map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "更新 Cargo.toml 中的所有依赖" })

map("n", "<leader>jk", function()
  require("neotest").run.run()
end, { desc = "跑单测" })

map("n", "<leader>jj", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "跑当前文件的单测" })

map("n", "<leader>jd", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "跑单测（DAP）" })

map("n", "<leader>js", function()
  require("neotest").run.stop()
end, { desc = "停止单测" })

map("n", "<leader>ja", function()
  require("neotest").run.attach()
end, { desc = "单测附加" })

map("n", "<leader>jt", function()
  require("neotest").output_panel.toggle()
end, { desc = "打开/关闭单测输出" })

map("n", "<leader>jc", function()
  require("neotest").output_panel.clear()
end, { desc = "清空单测输出" })

map("n", "<leader>jw", function()
  require("neotest").watch.toggle(vim.fn.expand "%")
end, { desc = "单测 watch" })

map("n", "<leader>jsc", function()
  require("neotest").summary.close()
end, { desc = "关闭单测列表" })

map("n", "<leader>jso", function()
  require("neotest").summary.open()
end, { desc = "打开单测列表" })

map("n", "<leader>do", function()
  require("dapui").open()
end, { desc = "Open dapui" })

map("n", "<leader>dc", function()
  require("dapui").close()
end, { desc = "Close dapui" })

map("n", "<leader>dt", function()
  require("dapui").toggle()
end, { desc = "Toggle dapui" })

map("n", "<leader>ft", function()
  require("treesj").toggle()
end, { desc = "Toggle tree" })

map("n", "<leader>fT", function()
  require("treesj").toggle { split = { recursive = true } }
end, { desc = "Toggle tree recursive" })

map("n", "<leader>fj", function()
  require("treesj").join()
end, { desc = "join tree" })

map("n", "<leader>fs", function()
  require("treesj").split()
end, { desc = "split tree" })

map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
