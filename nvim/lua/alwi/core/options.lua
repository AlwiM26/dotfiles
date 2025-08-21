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

-- Keep 10 line below when scroll
opt.scrolloff = 10

-- Line wrap
opt.wrap = false

-- Search text with case sensitive
opt.ignorecase = true
opt.smartcase = true

-- Termguicolor for darkmode
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.fillchars = { eob = " " }
opt.showmatch = true

-- setup backspace
opt.backspace = "indent,eol,start"

-- clipboard using system clipboard
opt.clipboard:append("unnamedplus")

-- setup split window, horizontal split will opened below active window, and vertical will opened to the right
opt.splitright = true
opt.splitbelow = true

-- File handling
opt.backup = false
opt.writebackup = false
opt.swapfile = false
