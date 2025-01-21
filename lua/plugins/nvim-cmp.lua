return {
  "hrsh7th/nvim-cmp",
  event = "VeryLazy",
  dependencies = {
    "onsails/lspkind-nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-omni",
  },
  config = function()
    require("config.nvim-cmp")
  end,
}