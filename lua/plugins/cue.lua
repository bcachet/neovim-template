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
        cue = vim.fn.executable("cue") == 1 and {
          cmd = { "cue", "lsp", "serve" },
          filetypes = { "cue" },
          single_file_support = true,
        } or {},
      },
    },
  },
}
