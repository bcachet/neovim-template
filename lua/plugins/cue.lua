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
    opts = {
      servers = {
        cue = {
          cmd = {
            "cue",
            "lsp",
            "serve",
          },
          filetypes = { "cue" },
          single_file_support = true,
        },
      },
    },
  },
}
