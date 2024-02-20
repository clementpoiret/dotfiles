lvim.plugins = {
  -- -- general
  { "github/copilot.vim" },
  { "tpope/vim-fugitive" },
  { "Vigemus/iron.nvim" },
  { "JManch/sunset.nvim" },

  -- -- python
  { "clementpoiret/swenv.nvim" },
  -- { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  -- { "sillybun/vim-repl" },
  { "fisadev/vim-isort" },
  { "heavenshell/vim-pydocstring" },

  -- -- elm
  { 'elmcast/elm-vim' },

  -- -- json
  { "XadillaX/json-formatter.vim" },

  -- -- LaTeX
  { "lervag/vimtex" },

  -- -- Flutter
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },

  -- -- colorschemes
  { "lunarvim/colorschemes" },
  { "projekt0n/github-nvim-theme" },
  { "arcticicestudio/nord-vim" },
  { "jsit/toast.vim" },
  { "sainnhe/edge" },
  { "ayu-theme/ayu-vim" },
  { "letorbi/vim-colors-borland" },
  { "srcery-colors/srcery-vim" },
  { "chriskempson/base16-vim" },
  { "catppuccin/nvim" },

  -- -- misc
  { "mfussenegger/nvim-jdtls" },
  { "folke/todo-comments.nvim" },
  { "kelwin/vim-smali" },
}
