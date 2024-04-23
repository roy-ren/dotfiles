-- place the file in /custom/themes/<theme-name>.lua
-- for example: custom/themes/siduck.lua

local M = {}

local statusline_bg = "#000000"
local background = "#1b1919"
local line_background = "#404040"
local yellow = "#ffff19"
local blue = "#b2b2ee"

M.base_30 = {
  white = "#ffffff",
  darker_black = background, -- 弹窗的背景色
  black = background, --  nvim bg 选中tab页
  black2 = line_background, -- 搜索选中文件行的背景色
  one_bg = background, -- real bg of onedark
  one_bg2 = background, -- 光标所在代码块的 背景色
  one_bg3 = statusline_bg,
  grey = line_background, -- 行号背景色 & 状态栏(提示信息)
  grey_fg = "#666666", -- 注释
  grey_fg2 = "#595959",
  light_grey = "#cccccc", -- 状态栏（git信息）顶部tab 字体颜色
  red = "#ff4c4c",
  baby_pink = "#ffccd5",
  pink = "#ffc0cb",
  line = line_background, -- for lines like vertsplit
  green = "#008000",
  vibrant_green = "#4ca64c",
  nord_blue = "#ccccff", -- status line Normal mode
  blue = blue,
  yellow = yellow, -- 特殊文件颜色
  sun = "#323232",
  purple = "#7e408d",
  dark_purple = "#2a0134", -- Insert Flag color
  teal = "#008080",
  orange = "#ffb732",
  cyan = "#007f7f", -- Visual flag color
  statusline_bg = statusline_bg,
  lightbg = "#000000", -- 状态栏颜色(部份)文件名称
  pmenu_bg = "#f0f0f0", -- promote selection background
  folder_bg = blue, -- 文件夹背景色&文件夹图标&文件夹名称
  lavender = "#000000",
}

M.base_16 = {
  -- Default Background base01 -- Lighter Background (Used for status bars, line number and folding marks)
  base00 = background,
  base01 = "#ffffff", -- unkonwn
  base02 = line_background, -- Visual mode 选中行的背景色
  base03 = "#ffffff", -- unkonwn
  base04 = "#ffffff", -- unkonwn
  base05 = "#ffffff", -- 运算符、property、光标、文字颜色
  base06 = "#ffffff", -- unkonwn
  base07 = "#ffffff", -- unkonwn
  base08 = "#23ff83", -- 点号调用的方法名（方法参数)
  base09 = "#786dff", -- 硬编码的常量值,数字 this null
  base0A = "#5dd8ff", -- 类型名&类型修饰关键
  base0B = "#ff2c38", -- 字符串
  base0C = "#ffffff", -- lua 中括号颜色
  base0D = "#41a1c0", -- 定义的方法名&直接调用的方法名
  base0E = "#d31895", -- 关键字(class/super/required/return/for)
  base0F = "#ffffff", -- 标点符号、分号、括号
}

M.type = "light" -- light / dark

return M
