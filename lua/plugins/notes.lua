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
      "telescope-media-files.nvim",
      "calendar-vim",
    },
    opts = {
      home = vim.fn.expand("~/Documents/Notes/"),
    },
  },
}
