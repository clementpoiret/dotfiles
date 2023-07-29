-- General
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.renderer.icons.show.file = true

local todo = require("todo-comments")
todo.setup {}

-- Additional Plugins
require("user.plugins")

-- Theme config with switch on sunset
require("user.theme")

-- Linting & Formatting
require("user.formatting")

-- REPL
require("user.iron")

-- GH Copilot
require("user.copilot")

-- Swenv
require("user.swenv")

-- LaTeX
require("user.tex")

-- Day/Night mode
-- require("user.daynighttheme")
