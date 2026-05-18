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
        dagger = { enabled = true },
      },
    },
  },
}
