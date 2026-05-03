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
      { "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "Telekasten find note", mode = { "n" } },
      { "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "Telekasten today", mode = { "n" } },
      { "<leader>zz", "<cmd>Telekasten follow_link<CR>", desc = "Telekasten follow link", mode = { "n" } },
      { "<leader>zn", "<cmd>Telekasten new_templated_note<CR>", desc = "Telekasten new note", mode = { "n" } },
    },
  },
}
