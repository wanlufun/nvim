local LazyUtil = require("lazy.core.util")

local M = {}

function M.is_win()
  return vim.uv.os_uname().sysname:find("Windows") ~= nil
end

function M.get_plugin(name)
  return require("lazy.core.config").spec.plugins[name]
end

function M.get_plugin_path(name, path)
  local plugin = M.get_plugin(name)
  path = path and "/" .. path or ""
  return plugin and (plugin.dir .. path)
end

function M.has(plugin)
  return M.get_plugin(plugin) ~= nil
end

function M.on_very_lazy(fn)
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
      fn()
    end,
  })
end

setmetatable(M, {
  __index = function(t, k)
    if LazyUtil[k] then
      return LazyUtil[k]
    end
    t[k] = require("wanlu.util." .. k)
    return t[k]
  end,
})

return M
