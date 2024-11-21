-- vim.opt.breakindent = true
vim.opt.mouse = 'a'

-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}


--vim.opt.nocompatible = true
vim.opt.number = true
vim.opt.numberwidth = 1
-- vim.opt.clipboard = "unnamed"
vim.opt.clipboard:append("unnamedplus")
vim.opt.syntax = "on"
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.sw = 2
vim.opt.relativenumber = true
vim.opt.tabstop = 8
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

-- Encoding
vim.opt.encoding = "UTF-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings:append("utf-8")

-- Fix backspace indent
vim.opt.backspace = "indent,eol,start"

-- Tabs. May be overridden by autocmd rules
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Map leader to ,
-- vim.api.nvim_set_var("mapleader", ",")
vim.g.mapleader = ','
 
-- Enable hidden buffers
vim.opt.hidden = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Some servers have issues with backup files, see #649.
vim.opt.backup = false
vim.opt.writebackup = false

-- Give more space for displaying messages.
vim.opt.cmdheight = 2

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 3000

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

-- Always show the signcolumn, otherwise it would shift the text each time
vim.opt.signcolumn = "yes"

-- completeopt COC
vim.opt.completeopt = {"menuone", "noselect"}

-- wrap
vim.opt.wrap = false



