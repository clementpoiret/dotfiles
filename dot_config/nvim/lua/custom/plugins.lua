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
  -- {
  --   'neovim/nvim-lspconfig',
  --   config = function ()
  --     require 'plugins.configs.lspconfig'
  --     require 'custom.configs.lspconfig'
  --   end,
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
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set('i', '<C-a>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-ESC>', function() return vim.fn['codeium#Chat']() end, { expr = true, silent = true })
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

  -- Obsidian
  {
    'epwalsh/obsidian.nvim',
    lazy = true,
    ft = 'markdown',
    opts = {
      workspaces = {
        {
          name = 'default',
          path = "~/Sync/Notes/Obsidian/Default/",
        }
      },
    },
  },

  -- Misc
  {
    'mfussenegger/nvim-jdtls'
  },
  {
    'folke/todo-comments.nvim',
    -- PERF: test perf?  
    -- HACK: bruh
    -- TODO: wew
    -- NOTE:  sdkfj dkfjskdfj 
    -- FIX: fixed 
    -- WARNING: test done
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    'kelwin/vim-smali'
  },
}

return plugins
