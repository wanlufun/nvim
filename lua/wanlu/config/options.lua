-- global
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- option
vim.opt.mouse = ""
vim.opt.tabstop = 2
vim.opt.list = true
vim.opt.laststatus = 3
vim.opt.confirm = true
vim.opt.number = true
vim.opt.autowrite = true
vim.opt.expandtab = true
vim.opt.conceallevel = 2
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.inccommand = "nosplit"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.formatoptions = "jcroqlnt"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.scrolloff = 5
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spelllang = { "en" }
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.virtualedit = "block"
vim.opt.wildmode = "longest:full,full"
vim.opt.winminwidth = 5
vim.opt.wrap = false
vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
if vim.fn.has("nvim-0.10") == 1 then
  vim.opt.smoothscroll = true
end

vim.opt.clipboard = 'unnamedplus'
if vim.env.SSH_TTY then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = LuUtil.option.paste,
      ['*'] = LuUtil.option.paste,
    },
  }
end

