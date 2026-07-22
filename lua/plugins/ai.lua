return {
  {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      strategies = {
        chat = { adapter = "poolside" },
        inline = { adapter = "poolside" },
      },
      adapters = {
        poolside = function()
          return {
            name = "poolside",
            formatted_name = "Poolside",
            type = "acp",
            commands = {
              default = { "pool", "acp" },
            },
          }
        end,
      },
    },
  },
}
