-- Enable relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable nice search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Disable clipboard syncing
vim.opt.clipboard = ""

-- Disable line-wrap
vim.wo.wrap = false

-- Set hotkey to show file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Show directory tree' })

-- Nice tab behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 8

vim.opt.swapfile = false

vim.opt.updatetime = 50

-- Enable mouse mode
vim.o.mouse = 'a'

-- Save undo history
vim.o.undofile = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Pretty colours
vim.o.termguicolors = true

