return {
  {
    "avante.nvim",
    opts = {
      provider = "openrouter",
      providers = {
        openrouter = {
          __inherited_from = "openai",
          endpoint = "https://openrouter.ai/api/v1",
          api_key_name = "OPENROUTER_API_KEY",
          model = "mistralai/devstral-2512",
        },
      },
      acp_providers = {
        ["opencode"] = {
          command = "opencode",
          args = { "acp" },
        },
      },
      selection = {
        hint_display = "none",
      },
      behaviour = {
        auto_set_keymaps = false,
      },
      web_search = {
        provider = "kagi",
      },
    },
  },
  {
    "render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
    },
  },
  {
    "blink.cmp",
    opts = {
      sources = {
        default = { "avante" },
        providers = { avante = { module = "blink-cmp-avante", name = "Avante" } },
      },
    },
  },
}
