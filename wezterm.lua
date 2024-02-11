-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Afterglow'
config.font_size = 18
config.window_background_image = '/Users/samiamsaf/Photos/cyberpunk-wp-2.jpg'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.040,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}


config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
  config.font = wezterm.font 'JetBrains Mono'

-- and finally, return the configuration to wezterm
return config
