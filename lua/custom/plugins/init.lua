print("Hello")

vim.opt.relativenumber = true

vim.o.clipboard = ""

vim.wo.wrap = false

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Show directory tree' })
