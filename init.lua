-- Map leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set nerd font
vim.g.have_nerd_font = true

-- Number settings
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse integration
vim.o.mouse = "a"

-- Remove show mode since it will be present in statusline
vim.o.showmode = false

-- Schedule clipboard to avoid startup slowdown
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Configure split behaviour
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.o.inccommand = "split"
vim.o.cursorline = true

vim.o.scrolloff = 10

-- Set the number of spaces for indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- When pressing '>>' or '<<' for indenting/un-indenting, use this value
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Make sure auto-indentation works correctly
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.confirm = true

-- Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Other configurations (keymaps, autocommands...)
-- Loading key maps
require("keymaps")
require("autocmd")
require("terminal")

vim.cmd.colorscheme("habamax")
