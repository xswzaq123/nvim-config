vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- set relative line numbering
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true -- if you include mix case in your search, assumes you want case-sensitive

-- cursor bottom line indicator
opt.cursorline = false

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.termguicolors = true

-- set scroll offset
opt.scrolloff = 8

function open_terminal_horizontal()
	-- Create a horizontal split
	vim.cmd("split")

	-- Open a new terminal buffer in the split
	vim.cmd("term")

	-- set terminal height
	vim.cmd("resize 10")
end

-- Create a command to invoke the function
vim.cmd("command! TermHorizontal lua open_terminal_horizontal()")
