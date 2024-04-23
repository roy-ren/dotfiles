local M = {}

-------------------------------------- globals -----------------------------------------
M.setup = function()
  local g = vim.g

  -- g.neovide_profiler = true
  g.neovide_show_border = false
  g.neovide_transparency = 0.85
  g.neovide_scroll_animation_length = 0.5
  g.neovide_hide_mouse_when_typing = true
  g.neovide_scroll_animation_far_lines = 5
  g.neovide_underline_stroke_scale = 1.0
  g.neovide_unlink_border_highlights = true
  g.neovide_refresh_rate = 60
  g.neovide_refresh_rate_idle = 5
  g.neovide_no_idle = true
  g.neovide_confirm_quit = true
  g.neovide_remember_window_size = true
  g.neovide_input_macos_alt_is_meta = true

  -- Cursor
  g.neovide_cursor_vfx_mode = "pixiedust"
  g.neovide_cursor_trail_size = 0.3
  g.neovide_cursor_smooth_blink = true
  g.neovide_cursor_antialiasing = true
  g.neovide_cursor_animation_length = 0.05
  g.neovide_cursor_animate_in_insert_mode = true
  g.neovide_cursor_animate_command_line = true
  g.neovide_cursor_unfocused_outline_width = 0.125
end

return M
