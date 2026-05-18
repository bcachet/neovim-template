local util = require("lspconfig.util")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cue",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    ft = { "cue" },
    opts = {
      servers = {
        -- dagger = { enabled = true },
        cue = vim.fn.executable("cue") == 1 and {
          cmd = { "cue", "lsp", "serve" },
          filetypes = { "cue" },
          root_dir = function(fname)
            return util.root_pattern("cue.mod", ".git")(fname)
          end,
          single_file_support = true,
        } or {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        cue_fmt = {
          command = "cue",
          args = { "fmt", "-" },
          stdin = true,
        },
      },
    },
  },
}
