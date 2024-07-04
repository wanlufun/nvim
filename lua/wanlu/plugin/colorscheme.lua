return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        dashboard = true,
        gitsign = true,
        noice = true,
        notify = true,
        neotree = true,
        which_key = true,
        treesitter = true,
        treesitter_context = true,
      },
    },
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
