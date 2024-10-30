return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" }, -- setup for treesitter to only run when opening a new or exisiting file
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- Highlight syntax
      highlight = {
        enable = true,
      },

      -- Enable indentation
      indent = {
        enable = true,
      },

      -- Enable autotagging
      autotag = {
        enable = true,
      },

      -- Ensure these language are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "graphql",
        "prisma",
        "bash",
        "lua",
        "vim",
        "gitignore",
        "vimdoc",
        "c",
        "sql",
        "scss",
        "regex",
        "python",
        "dart",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}

