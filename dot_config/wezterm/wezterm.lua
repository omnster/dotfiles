local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Tango (terminal.sexy)'
config.hide_tab_bar_if_only_one_tab = false
config.enable_tab_bar = false

config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = 'CursorColor',
}

config.audible_bell = "Disabled"

config.font = wezterm.font_with_fallback {
  'Terminess Nerd Font',
}
config.font_size = 10

return config

