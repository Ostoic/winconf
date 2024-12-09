local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Bamboo'

local dimmer = { brightness = 0.1 }
config.term = "xterm-256color"
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- prog
config.default_prog = { "C:\\Users\\Owner\\scoop\\shims\\msys2.cmd -i -l" }

-- scroll bar
config.enable_scroll_bar = true
config.min_scroll_bar_height = "3cell"
config.scrollback_lines = 5000
config.colors = {
    scrollbar_thumb = "#CCCCCC",
}

-- tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = true
config.tab_max_width = 25
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true

-- cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 700

-- window
config.window_close_confirmation = "NeverPrompt"
config.window_padding = { left = 0, right = 15, top = 0, bottom = 0 }


-- change config now
-- config.default_domain = 'WSL:Ubuntu'

config.keys = {
  -- paste from the clipboard
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

  -- paste from the primary selection
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },

  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentTab { confirm = false },
  },
  {
    key = 't',
    mods = 'CTRL',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '"',
    mods = 'CTRL|SHIFT|ALT',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  { key = '[', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
  { key = ']', mods = 'CTRL', action = act.ActivateTabRelative(1) },
  { key = '+', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
  { key = '_', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
}

return config
