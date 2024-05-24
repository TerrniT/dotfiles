local options = {
	ai = true, -- auto indent
	autoread = true,
	background = "dark",
	backspace = "indent,eol,start",
	backup = false, -- creates a backup file
	breakindent = true, --
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that is visible in markdown files
	cursorline = false, -- highlight the current line
	colorcolumn = "80",
	cursorcolumn = false,
	expandtab = true, -- convert tabs to spaces
	fileencoding = "utf-8", -- the encoding written to a file
	guifont = "monospace:h18", -- the font used in graphical neovim applications
	hidden = true,
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	inccommand = "split", --
	incsearch = true,
	laststatus = 2,
	mouse = "a", -- allow the mouse to be used in neovim
	number = true, -- set numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	pumblend = 5, --
	pumheight = 10, -- pop up menu height
	relativenumber = true, -- set relative numbered lines
	scrolloff = 8, --
	shell = "bash",
	shiftround = true,
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	showcmd = true,
	showmode = true, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, -- always show tabs
	si = true, -- smart indent
	sidescrolloff = 8,
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	smarttab = true, -- smart tab
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	tabstop = 2, -- insert 2 spaces for a tab
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = false, -- enable persistent undo
	updatetime = 300, -- faster completion (4000ms default)
	wildoptions = "pum", --
	winblend = 0, --
	wrap = false, -- display lines as one long line
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.path:append({ "**" }) -- find files, search down into subfolders

vim.opt.wildignore:append({ "*/.git/*" })
vim.opt.wildignore:append({ "*/node_modules/*" })

-- undercurl
vim.cmd([[ let &t_Cs = "\e[4:3m]" ]])
vim.cmd([[ let &t_Ce = "\e[4:0m]" ]])

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

