local overrides = require("custom.configs.overrides")

local plugins = {
  -- Override plugin definition options
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = overrides.nvimcmp,
  -- },

  -- General
  {
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      vim.keymap.set('i', '<C-a>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  -- {
  --   'zbirenbaum/copilot.lua',
  --   cmd = 'Copilot',
  --   event = 'InsertEnter',
  --   config = function()
  --     require 'custom.configs.copilot'
  --   end,
  -- },
  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --       "nvim-lua/plenary.nvim",
  --       "hrsh7th/nvim-cmp",
  --   },
  --   config = function()
  --       require("codeium").setup({})
  --   end,
  --   lazy=false,
  -- },
  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.git.lazygit" },
  },
  {
    'Vigemus/iron.nvim',
    ft = 'python',
    config = function()
      require 'custom.configs.iron'
    end,
  },
  -- {
  --   'neovim/nvim-lspconfig',
  --   config = function ()
  --     require 'plugins.configs.lspconfig'
  --     require 'custom.configs.lspconfig'
  --   end,
  -- },

  -- Python
  {
    'AckslD/swenv.nvim',
  },
  {
    'stevearc/dressing.nvim',
  },
  {
    'heavenshell/vim-pydocstring',
  },

  -- Elm
  {
    'elmcast/elm-vim',
  },

  -- LaTeX
  {
    'lervag/vimtex',
    config = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  -- Flutter
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },

  -- Misc
  {
    'mfussenegger/nvim-jdtls'
  },
  {
    'folke/todo-comments.nvim',
    config = function()
      require('todo-comments').setup {}
    end
  },
  {
    'kelwin/vim-smali'
  },
}

return plugins