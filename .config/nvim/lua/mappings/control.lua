local map = vim.keymap.set

map("n", "<C-e>", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "toggle harpoon quick menu" })

map("n", "<C-d>", "<C-d>zz", { desc = "向下翻屏后，光标上下居中" })
map("n", "<C-u>", "<C-u>zz", { desc = "向上翻屏后，光标上下居中" })
map("n", "<C-Up>", "<cmd>hor res +2<cr>", { desc = "增加窗口高度" })
map("n", "<C-Down>", "<cmd>hor res -2<cr>", { desc = "减小窗口高度" })
map("n", "<C-Left>", " <cmd>vert res -4<cr>", { desc = "减小窗口宽度" })
map("n", "<C-Right>", "<cmd>vert res +4<cr>", { desc = "增加窗口宽度" })

map("i", "<C-k>", function()
  vim.lsp.buf.signature_help()
end, { desc = "显示函数签名" })

map("n", "<C-m>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

map("n", "<C-b>", "<cmd>DapToggleBreakpoint<cr>", { desc = "切换断点" })
