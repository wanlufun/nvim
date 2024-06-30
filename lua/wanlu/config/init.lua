vim.uv = vim.uv or vim.loop

local M = {}

M.did_init = false
function M.init()
  if M.did_init then
    return
  end

  require("wanlu.config.options")

  require("wanlu.config.lazy")

end

return M
