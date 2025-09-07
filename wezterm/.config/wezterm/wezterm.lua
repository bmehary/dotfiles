-- Reload configuration file: CTRL + SHIFT + R

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = 'Catppuccin Mocha'

config.enable_tab_bar = false

config.leader = { mods = 'CTRL', key = 'a', timeout_milliseconds = 2000 }

config.keys = {
    { mods = 'LEADER', key = '-', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
    { mods = 'LEADER', key = '\\', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },

    -- Vim motion with panes
    { mods = "CTRL", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
    { mods = "CTRL", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
    { mods = "CTRL", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
    { mods = "CTRL", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },
}

-- Finally, return the configuration to wezterm:
return config