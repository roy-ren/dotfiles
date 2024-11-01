return {
  "ggandor/leap.nvim",
  dependencies = {
    "tpope/vim-repeat",
  },
  event = "BufEnter",
  config = function()
    require("leap").add_default_mappings()
    -- The below settings make Leap's highlighting closer to what you've been
    -- used to in Lightspeed.

    vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" }) -- or some grey
    vim.api.nvim_set_hl(0, "LeapMatch", {
      -- For light themes, set to 'black' or similar.
      fg = "white",
      bold = true,
      nocombine = true,
    })
    -- Deprecated option. Try it without this setting first, you might find
    -- you don't even miss it.
    require("leap").opts.highlight_unlabeled_phase_one_targets = true
  end,
}
