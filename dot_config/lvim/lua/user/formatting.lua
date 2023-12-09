lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.ts", "*.tsx" }

-- Formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescriptreact",
      "typescript",
      "css",
      "scss",
      "html",
      "json",
      "yaml",
      "markdown",
      "graphql",
      "md",
      "txt",
    },
    only_local = "node_modules/.bin"
  },
  {
    exe = "stylua",
    filetypes = { "lua" },
  },
  {
    name = "yapf",
    filetypes = { "python" },
    -- set based_on_style "google"
    args = { "--style", "{based_on_style: google}" }
  },
}

-- Linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "flake8",
    filetypes = { "python" },
  }
}

-- Misc
-- pydocstring
vim.g.pydocstring_formatter = "google"
-- vim-isort config
vim.g.vim_isort_map = "C-i"
