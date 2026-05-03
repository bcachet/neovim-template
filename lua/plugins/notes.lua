return {
  {
    "zk-org/zk-nvim",
    name = "zk",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      picker = "telescope",

      lsp = {
        -- `config` is passed to `vim.lsp.start(config)`
        config = {
          name = "zk",
          cmd = { "zk", "lsp" },
          filetypes = { "markdown" },
        },

        auto_attach = {
          enabled = true,
        },
      },
    },
  },
}
