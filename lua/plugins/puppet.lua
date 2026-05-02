return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "puppet",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    ft = { "puppet" },
    opts = {
      servers = {
        puppet = { enabled = true },
      },
    },
  },
}
