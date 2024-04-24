local wezterm = require 'wezterm'
return {
  check_for_updates = false,
  show_update_window = false,
  check_for_updates_interval_second = 19000000,

  term = "pwsh",
  default_prog = { 'pwsh.exe', '-l' },
  tab_bar_at_bottom = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  font = wezterm.font 'JetBrains Mono',
  color_scheme = "Misterioso",
  leader = { key = "t", mods = "CTRL" },
  keys = {
    { key = "-", mods = "LEADER", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    { key = "\\", mods = "LEADER", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    { key = "z", mods = "LEADER", action = "TogglePaneZoomState" },
    { key = "c", mods = "LEADER", action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "h", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Left" } },
    { key = "j", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Down" } },
    { key = "k", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Up" } },
    { key = "l", mods = "LEADER", action = wezterm.action { ActivatePaneDirection = "Right" } },
    { key = "H", mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Left", 5 } } },
    { key = "J", mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Down", 5 } } },
    { key = "K", mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Up", 5 } } },
    { key = "L", mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Right", 5 } } },
    { key = "1", mods = "LEADER", action = wezterm.action { ActivateTab = 0 } },
    { key = "2", mods = "LEADER", action = wezterm.action { ActivateTab = 1 } },
    { key = "3", mods = "LEADER", action = wezterm.action { ActivateTab = 2 } },
    { key = "4", mods = "LEADER", action = wezterm.action { ActivateTab = 3 } },
    { key = "5", mods = "LEADER", action = wezterm.action { ActivateTab = 4 } },
    { key = "6", mods = "LEADER", action = wezterm.action { ActivateTab = 5 } },
    { key = "7", mods = "LEADER", action = wezterm.action { ActivateTab = 6 } },
    { key = "8", mods = "LEADER", action = wezterm.action { ActivateTab = 7 } },
    { key = "9", mods = "LEADER", action = wezterm.action { ActivateTab = 8 } },
    { key = "w", mods = "LEADER", action = wezterm.action.CloseCurrentPane { confirm = true } },
    { key = 'F9', mods = 'ALT', action = wezterm.action.ShowTabNavigator },
  },
  window_frame = {
    inactive_titlebar_border_bottom = '#2b2042',
    active_titlebar_border_bottom = '#2b2042',
    button_fg = '#cccccc',
    button_bg = '#2b2042',
    button_hover_fg = '#000',
    button_hover_bg = '#3b3052',
    active_titlebar_bg = '#121212',
    font_size = 12.0,
    inactive_titlebar_bg = '#333333',
  },
  -- #073642
  colors = {
    tab_bar = {
      background = '#121212',
      active_tab = {
        bg_color = '#00f8aa',
        fg_color = '#000',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },
      inactive_tab = {
        bg_color = '#121212',
        fg_color = '#808080',
      },
      inactive_tab_hover = {
        bg_color = '#002636',
        fg_color = '#909090',
        italic = true,
      },
      new_tab = {
        bg_color = '#121212',
        fg_color = '#1aff22',
      },
      new_tab_hover = {
        bg_color = '#002636',
        fg_color = '#909090',
        italic = true,
      },
    }
  }
}
