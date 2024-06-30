-- Git >= 2.19.0 (for partial clones support)
local git_version = vim.fn.system("git --version")
local version_match = git_version:match("^git version ([^ ]+)")
if version_match then
  local major, minor, patch = version_match:match("(%d?)(%d?)(%d?)")
  major = tonumber(major)
  minor = tonumber(minor)
  patch = tonumber(patch)
  if major < 2 and minor < 19 and patch < 0 then
    vim.api.nvim_echo({
      -- lazy.nvim requires git >=2.19.0.
      { "lazy.nvim requires Git >= 2.19.0\n", "ErrorMsg" },
      { "Press any key to exit", "MoreMsg" },
    }, true, {})
    vim.fn.getchar()
    vim.cmd([[quit]])
    return {}
  end
else
  vim.api.nvim_echo({
    { "Failed to get Git version\n", "ErrorMsg" },
    { "Press any key to exit", "MoreMsg" },
  }, true, {})
  vim.fn.getchar()
  vim.cmd([[quit]])
  return {}
end

require("wanlu.config").init()

