local M = {
  base_30 = {},

  base_16 = {
    -- Default Background
    base00 = "#000000",

    -- Lighter Background (Used for status bars, line number and folding marks)

    -- Selection Background
    base02 = "#4a4740",

    -- Comments, Invisibles, Line Highlighting
    -- base03 = "#00cc44",

    -- Dark Foreground (Used for status bars)
    -- Default Foreground, Caret, Delimiters, Operators
    base05 = "#ffffff",

    -- Light Foreground (Not often used)
    -- Light Background (Not often used)
    -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base08 = "#23ff83", -- 点号调用的方法名（方法参数)

    -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base09 = "#7751ff", -- 硬编码的常量值,数字 this null

    -- Classes, Markup Bold, Search Text Background
    base0A = "#0060ff", -- 类型名&类型修饰关键

    -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0B = "#ff2b37", -- 字符串

    -- Support, Regular Expressions, Escape Characters, Markup Quotes
    -- Functions, Methods, Attribute IDs, Headings
    base0D = "#228142",

    -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0E = "#d31a94",

    -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
    base0F = "#ffffff",
  },
}

return M
