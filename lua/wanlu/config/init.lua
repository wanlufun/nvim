vim.uv = vim.uv or vim.loop

local M = {}

M.did_init = false
function M.init()
  if M.did_init then
    return
  end

  -- load options
  require("wanlu.config.options")

  -- load autocmd
  local lazy_autocmds = vim.fn.argc(-1) == 0
  if not lazy_autocmds then
    require("wanlu.config.autocmds")
  end

  local group = vim.api.nvim_create_augroup("wanlu", { clear = true })
  vim.api.nvim_create_autocmd("User", {
    group = group,
    pattern = "VeryLazy",
    callback = function()
      if lazy_autocmds then
        require("wanlu.config.autocmds")
      end
    end,
  })


  -- load lazy.nvim
  require("wanlu.config.lazy")

end

return M
