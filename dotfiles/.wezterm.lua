local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_tab_bar = false
config.enable_scroll_bar = true
config.font = wezterm.font "MesloLGS NF"
-- keybindings
config.keys = {
    {
        key = "r",
        mods = "CTRL|ALT",
        action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
    },
    {
        key = "d",
        mods = "CTRL|ALT",
        action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
    },
    {
        key = "LeftArrow",
        mods = "ALT",
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
     	key = "RightArrow",
        mods = "ALT",
    	action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
     	key = "UpArrow",
        mods = "ALT",
    	action = wezterm.action.ActivatePaneDirection 'Up',
    },
    {
     	key = "DownArrow",
        mods = "ALT",
    	action = wezterm.action.ActivatePaneDirection 'Down',
    },
}

return config
