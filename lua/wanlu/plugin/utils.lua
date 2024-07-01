return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end,
  },

  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  }
}

