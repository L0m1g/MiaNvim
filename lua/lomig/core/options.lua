vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt

-- numéro de lignes
opt.relativenumber = true
opt.number = true

-- tabulation et indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- recherche
opt.ignorecase = true
opt.smartcase = true

-- curseur
opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false
