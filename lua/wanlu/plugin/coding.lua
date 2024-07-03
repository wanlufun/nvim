return {
  {
    'echasnovski/mini.pairs',
    event = "VeryLazy",
    version = '*',
    opts = {
      modes = { insert = true, command = true, terminal = false },
    },
    keys = {
      {
        "<leader>cp",
        function()
          vim.g.minipairs_disable = not vim.g.minipairs_disable
          if vim.g.minipairs_disable then
            LuUtil.warn("Disabled auto pairs", { title = "Option" })
          else
            LuUtil.info("Enabled auto pairs", { title = "Option" })
          end
        end,
        desc = "Toggle Auto Pairs",
      },
    },
    config = function(_, opts)
      local pairs = require("mini.pairs")
      pairs.setup(opts)
    end,
  },
}
