--local swenv = require "swenv"
--swenv.setup({
--  get_venvs = function(venvs_path)
--    return require("swenv.api").get_venvs(venvs_path)
--  end,
--  venvs_path = vim.fn.expand("."),
--  post_set_venv = nil,
--})

-- Key Mappings
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}
