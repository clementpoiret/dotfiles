require "nvchad.mappings"
local M = {}

M.swenv = {
  n = {
    ['<leader>ce'] = { '<cmd>lua require("swenv.api").pick_venv()<cr>', 'Choose Env' }
  }
}

M.cursor = {
  n = {
    ['j'] = { 'jzz', 'Next line and center cursor', opts={noremap= true} },
    ['k'] = { 'kzz', 'Previous line and center cursor', opts={noremap= true} },
    ['n'] = { 'nzzzv', 'Find next and center cursor', opts={noremap= true} },
    ['N'] = { 'Nzzzv', 'Find previous and center cursor', opts={noremap= true} },
  }
}

return M
