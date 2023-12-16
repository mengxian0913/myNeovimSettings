local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = false
opt.number = true
opt.mouse = "a"

-- tabs & indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrap
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false

-- appearance
-- opt.termguicolors = false
opt.background = "dark"
opt.signcolumn = "no"

-- backspace
--opt.backspace = "indent, eol, start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
