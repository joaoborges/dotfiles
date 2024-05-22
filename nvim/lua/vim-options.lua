-- Basic vim configurations

-- Based on:
-- -> https://www.lunarvim.org/configuration/01-settings.html#example-options
-- -> https://github.com/josean-dev/dev-environment-files
-- -> https://github.com/cpow/neovim-for-newbs

-- tabs & indentation
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.backup = false -- creates a backup file
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- clipboard
--vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.clipboard:append("unnamedplus")

--vim.opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers

-- backup
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo

-- editor
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.wrap = true -- do not display lines as one long line
--vim.opt.columns = 80
--vim.opt.formatoptions = "croql"
vim.opt.textwidth = 79
vim.opt.wrapmargin = 0
vim.opt.linebreak = true
--vim.opt.fo-l = false
vim.opt.formatoptions:append "c"
vim.cmd("set formatoptions-=l")

-- spell
vim.opt.spell = false
vim.opt.spelllang = {"en", "pt_br"}

vim.g.background = "light"
vim.g.mapleader = " "
