require "nvchad.mappings"

local set = vim.keymap.set

set("n", "<C-m>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

set("n", "<leader> ", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

set("n", "<C-n>", function()
  vim.cmd "Neotree left toggle reveal"
end, { desc = "Toggle NeoTree in current directory" })

-- Reveal current file in NeoTree
set("n", "<leader>e", function()
  vim.cmd "Neotree left reveal"
end, { desc = "Reveal file in NeoTree" })

-- Toggle NeoTree in the current directory
set("n", "<leader>E", function()
  vim.cmd "Neotree float toggle reveal_force_cwd"
end, { desc = "Toggle NeoTree in current directory" })

-- Toggle NeoTree buffers on the right side
set("n", "<leader>b", function()
  vim.cmd "Neotree toggle show buffers right"
end, { desc = "Toggle NeoTree buffers" })

-- Show Git status in a floating NeoTree window
set("n", "<leader>s", function()
  vim.cmd "Neotree float git_status"
end, { desc = "Show Git status in NeoTree" })

set("n", "<leader>jk", function()
  require("neotest").run.run()
end, { desc = "跑单测" })

set("n", "<leader>jj", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "跑当前文件的单测" })

set("n", "<leader>jd", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "跑单测（DAP）" })

set("n", "<leader>js", function()
  require("neotest").run.stop()
end, { desc = "停止单测" })

set("n", "<leader>ja", function()
  require("neotest").run.attach()
end, { desc = "单测附加" })

set("n", "<leader>jt", function()
  require("neotest").output_panel.toggle()
end, { desc = "打开/关闭单测输出" })

set("n", "<leader>jc", function()
  require("neotest").output_panel.clear()
end, { desc = "清空单测输出" })

set("n", "<leader>jw", function()
  require("neotest").watch.toggle(vim.fn.expand "%")
end, { desc = "单测 watch" })

set("n", "<leader>jsc", function()
  require("neotest").summary.close()
end, { desc = "关闭单测列表" })

set("n", "<leader>jso", function()
  require("neotest").summary.open()
end, { desc = "打开单测列表" })

set("n", "<leader>dl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

set('n', '<leader>do', '<cmd>DiffviewOpen<cr>', { desc = "DiffviewOpen" })
set('n', '<leader>dc', '<cmd>DiffviewClose<cr>', { desc = "DiffviewClose" })
set('n', '<leader>dh', '<cmd>DiffviewFileHistory<cr>', { desc = "DiffviewFileHistory" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go { severity = severity }
  end
end
set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

local del = vim.keymap.del
del("n", "<leader>ff")
del("n", "<leader>n")
del("n", "<leader>pt")
del("n", "<leader>x")
del("i", "<C-h>")
