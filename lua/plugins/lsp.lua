return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "puppet-editor-services",
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
