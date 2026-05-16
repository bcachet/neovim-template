-- Configuration to disable automatic snippet and completion triggering
return {
  {
    "L3MON4D3/LuaSnip",
    optional = true,
    opts = function(_, opts)
      opts.enable_autosnippets = false
    end,
  },

  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
}
