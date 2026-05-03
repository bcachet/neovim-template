return {
  -- {
  --   "jakewvincent/mkdnflow.nvim",
  --   ft = { "markdown", "rmd" }, -- Add custom filetypes here if configured
  --   config = function()
  --     require("mkdnflow").setup({
  --       -- Your config
  --     })
  --   end,
  -- },
  {
    "renerocksai/telekasten.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      "mattn/calendar-vim",
    },
    opts = {
      home = vim.fn.expand("~/Documents/Notes/"),
    },
    keys = {
      { "<leader>z", "<cmd>Telekasten panel<CR>", desc = "Telekasten panel", mode = { "n" } },
    },
  },
}
