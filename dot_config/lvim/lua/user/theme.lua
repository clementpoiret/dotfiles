lvim.colorscheme = "github_dark_high_contrast"

-- Configure theme based on sunset/sunrise
local sunset = require("sunset")

day_callback = function()
  -- set background to light
  -- vim.opt.background = "light"
  -- lvim.colorscheme = "github_light_high_contrast"
  lvim.colorscheme = "catppuccin-latte"
end
night_callback = function()
  -- set background to dark
  -- vim.opt.background = "dark"
  lvim.colorscheme = "catppuccin-mocha"
end

sunset.setup {
  latitude = 48.8667,
  longitude = 2.3333,
  day_callback = day_callback,
  night_callback = night_callback,
}
