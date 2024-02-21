---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  theme_toggle = {'catppuccin', 'github_light'},

  nvdash = {
    load_on_startup = true,
  }
}
M.plugins = 'custom.plugins'
M.mappings = require 'custom.mappings'

return M
