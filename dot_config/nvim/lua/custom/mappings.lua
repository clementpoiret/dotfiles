local M = {}

M.swenv = {
  n = {
    ['<leader>ce'] = { '<cmd>lua require("swenv.api").pick_venv()<cr>', 'Choose Env' }
  }
}

return M
