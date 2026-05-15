-- Configuration to disable automatic snippet and completion triggering
return {
  -- Override nvim-cmp configuration to control completion behavior
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      -- Disable automatic completion while typing
      if opts.completion then
        opts.completion.autocomplete = false  -- Disable auto-completion trigger
      end

      -- Configure completion to only show when manually triggered
      if opts.completion then
        opts.completion.completeopt = "menu,menuone,noselect"  -- Standard completion options
      end

      -- Remove snippet sources from cmp to prevent snippet-based completions
      if opts.sources then
        opts.sources = vim.tbl_filter(function(source)
          return not (source.name == "luasnip" or source.name == "snippy")
        end, opts.sources)
      end

      -- Configure mappings to only trigger completion on TAB
      if opts.mapping then
        opts.mapping = {
          ["<Tab>"] = function(fallback)
            if require("cmp").visible() then
              require("cmp").select_next_item()
            else
              require("cmp").complete()  -- Manually trigger completion
            end
          end,
          ["<S-Tab>"] = function(fallback)
            if require("cmp").visible() then
              require("cmp").select_prev_item()
            else
              fallback()
            end
          end,
          ["<CR>"] = require("cmp").mapping.confirm({ select = true }),  -- Confirm selection
          ["<C-e>"] = require("cmp").mapping.abort(),  -- Abort completion
        }
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
