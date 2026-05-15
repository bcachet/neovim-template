-- Configuration to disable automatic snippet triggering
return {
  -- Override nvim-cmp configuration to disable snippet completion
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      -- Remove snippet sources from cmp
      if opts.sources then
        opts.sources = vim.tbl_filter(function(source)
          return not (source.name == "luasnip" or source.name == "snippy")
        end, opts.sources)
      end

      -- Disable snippet completion in mapping
      if opts.mapping then
        opts.mapping["<Tab>"] = nil
        opts.mapping["<S-Tab>"] = nil
      end
    end,
  },

  -- Override LuaSnip configuration to disable auto-triggering
  {
    "L3MON4D3/LuaSnip",
    optional = true,
    opts = function(_, opts)
      -- Disable auto-triggering of snippets
      if opts.enable_autosnippets == nil then
        opts.enable_autosnippets = false
      end

      -- You can also disable specific snippet types
      -- opts.ft_func = function() return {} end -- Disable filetype-specific snippets
    end,
  },

  -- Optionally disable friendly-snippets if you don't want any snippets at all
  -- {
  --   "rafamadriz/friendly-snippets",
  --   enabled = false,
  -- },
}
