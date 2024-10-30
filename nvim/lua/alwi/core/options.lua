vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line & number
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrap
opt.wrap = false

-- Search text with case sensitive
opt.ignorecase = true
opt.smartcase = true

-- Termguicolor for darkmode
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- setup backspace
opt.backspace = "indent,eol,start"

-- clipboard using system clipboard
opt.clipboard:append("unnamedplus")

-- setup split window, horizontal split will opened below active window, and vertical will opened to the right
opt.splitright = true
opt.splitbelow = true

