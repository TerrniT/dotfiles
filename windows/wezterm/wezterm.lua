local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = "hardhacker"
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

config.font = wezterm.font("JetBrains Mono", { weight = "Medium"})

return config
