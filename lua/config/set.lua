vim.opt.nu = true
vim.opt.relativenumber = true

-- turn on spell checking
vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- Hide mode in default status line
vim.opt.showmode = false

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Show which column your cursor is on
vim.opt.cursorcolumn = true

vim.opt.list = true
vim.opt.listchars = { tab = "⇥ ", space = "·", trail = "×", nbsp = "␣" }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"